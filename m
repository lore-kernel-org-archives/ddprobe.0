Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D1515A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7878CC43142
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663902053;
	bh=/qgBgPEMI3dQYoMF7lPpqlEKT37NeUBDnwRCxrwZD5Y=;
	h=To:Subject:From:Date:From;
	b=eaEut8UdD0T3zBbsw+HviahLKoWS/7BDGiX34SN5LFi+X7XcwKJR3loTsL2MSyACw
	 ZkIr35yQ+oy7BsSoAbzDmk70D7hg9CrbjYyjA/VqmTFfldP2mq92OiHduNwTBrZ88l
	 IKna/nsINPzE2oRk0rr4N4gHjRu/eFeWfZ9dKKwJEaQndU803rVRMyNQgbdFQ/90Kt
	 7XpxmeQVqo+h4vytVkWVuOcLzfxAlyHhivJQ3gUWzRYwTQ3GG6hCz5SciLhC8pC2bP
	 n4Ck+PFCnOWOhXmFFvdAgHJBDLW1A7eUV3zDeD0S90ti0hQhvFFLeX1W5l6TNdQW44
	 CDK0tZ7cJKjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA5BC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390205336.25906.17718163616203454038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9758ca78e9b73728116c5aec572b54dff2c28fe10926294350092ffc98f5f20f
Date: Fri, 23 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663902053
