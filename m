Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E654F10EA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98853C433F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673055087;
	bh=NKc30mldu2Oiq4Mpt/D6fir+DHrbxBgt6ieF7zuwh+w=;
	h=To:Subject:From:Date:From;
	b=YFDC7g8QaFY5rl3vaSyghHQLtf6tH6xw88uvmI/esYKJfsEuspR4xaPptjmrgis4v
	 XkxnhEJ5GpDjP99ys/NnCp01uS+ShlZL8S8RHlVW4WvrzTrMz3qB7AgZapz1SduG7z
	 eUHKutDm/LIamg2uqm8arExTC2rp2g9dFYeOE1K4iWAD8yhqvMGqAdWd8KGP+rDhFb
	 ukC9FbFD1qc4o2kHSd9ALR090xcPq0pAV/xFpv6+nkM5cmGPpGJPYsm6uKjGR/pwyN
	 aJshh76ypXC+DD67KPBhCiYg8WsPons8nR1viDRxZqjAbTmvUoFTAIzTIWCnBCDHc1
	 ICVG8V4hKpisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA66C54EBD
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305508744.3196.13577147267397048860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9038ecc9d656d48a80b1ceefe31c86081779e5cb45ad4d677596d1055de5cb3
Date: Sat, 07 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673055087
