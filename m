Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690E54449D
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUzcAW4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDD5C433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696628828;
	bh=jBg+VThsfIgzQkIebwydqDtp0SeNhJ5Dg7Apa/kmz4E=;
	h=To:Subject:From:Date:From;
	b=nUzcAW4n7EF0pjjyOGuoC7gsclVfxtKBDTQHaqyMIE6uqU7eVV1ZIlX9CQ4IWT+5J
	 hEqhtBZNKZuQ3IgYAVHecyi1pCfC82urzfcSX83k2XdxqqmEYNZkxJYeaDOSq4Xp+i
	 TwFbtZhOvKBmwuaMj/fXyvrdHHBJbQrAwMMZotrxJ598VmEV0Cp5xnrzz1ZDihe/P9
	 5w5us2BjAaq81hrAZjLd+0el9NbDIq89hwbjZMnzCxGhddeFgnf5YWp7X+hPSnfQBT
	 WCrOxBHbA+IB3T5JgP1fibE7HKwt45jLh/v2jqtOoPgT9s4dS8pS8KaKNb7ufv/7gC
	 KTppWWulxkmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9276E94125
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662882868.17422.17469258138807921016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3fbd423fc194059d7aebfd55fdaae0760295a224bb2bd02953157580955451
Date: Fri, 06 Oct 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696628828
