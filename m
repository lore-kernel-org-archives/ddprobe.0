Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5697652
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700E0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668149454;
	bh=kp8qI2vxoIh+wawa7gXqATAyu3I7QeC6KTrhKiZmqjk=;
	h=To:Subject:From:Date:From;
	b=Dq11gZ554fggrt9gsM/B7rhyaa7k/VmRgC8TpI0YP6C7nHLJF9RgOi7JwkQUkoN0G
	 dPBIjKoAPN8M7OLg+QGVwF4hmyTysfG3flQNdTQH35Zb0OsU4IlISc0bb5qUlGWAsy
	 BkeZozEuPGBGJsMnER9T5ZjC5Qz54bq8is2lxyYq3ui89GwFUWl4gKmFundMV0BFpb
	 UfPeEgaKz+yGLfeqBqgUZ68L1GBFYNC/+elKdcs+L5kSxrSjOdvj0n01dbA6Alm1ZW
	 hO0JoJiwDAIqnicNkODDlOA4T8z1howjGMVZOMntqAKXBFQl3ZrUqZGdTWEW28fYFv
	 C4KLhJ2UiiQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5541FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814945433.31172.15567111967456457060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 383479b097c67525b426c2d00a093cc631521bec59836b019455e581ae46ae40
Date: Fri, 11 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668149454
