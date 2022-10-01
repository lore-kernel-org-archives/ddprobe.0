Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DD523D1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B00BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664618453;
	bh=fHxkEaChtkaOr+nf78pjJ3DfAYAfxWk7lE2isvlOdS8=;
	h=To:Subject:From:Date:From;
	b=nW52Qtv9H2hmuz3Y3CdPXPU7M/ybL/tRnIIFVDvWhFiCujIAsTxCD/qEuW5nX4rFJ
	 ThaKCK+9ymNq41FR/rcfYrkeQ46rQ+0Z1fKbPPfvBefWpn6iWQaWeXSPg2pr5QzqlR
	 QRZbn1uKqw9Z5jc5LHpxqx3LKwq+nrOYzBDY3eaQ6/ine0YkAWxkaOIDxPunx5NNxS
	 lum6e4T7lTLuc8eQfk4Zp4nvGJu8RcnzivzP2rNwitMMNrdPWcq7cldx562B+KjbDD
	 Gjcpb2r72IDs7BelLRnKOYrAW2jSda2alAYG1pQZ11cQDYw96ti8S+rrtFQ0YJHw9W
	 STk92DCFoQBXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5625DC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461845334.20090.9472497197231444986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c9c76f4c65892b0025175c1b95c6c5c1601b62510e272f474670a5e5a0ecc2
Date: Sat, 01 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664618453
