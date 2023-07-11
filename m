Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697CB191
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2724C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689050228;
	bh=kGcSeCR0VYKZWkTqoE2wufr+bGLJLEeZDvAEjq4vC1s=;
	h=To:Subject:From:Date:From;
	b=mFEBgfz3wqnwMIKQDIHsc6qZSNDiNGAcbmRVmbDMl90CvlO8ZZszuaUocQborav1w
	 aF9A7Vux3//rZjRn+TxmNjB65hR4mfK39E7jGhrBb3mknP1KkuSoyPnmWCo5qrj3nT
	 svXl99KOxp64crBT+rGGwSLJvCcmNqnPIyZOJ8FHInj272G7DpvGKknbA1JYotJcu/
	 2lXukf7WjHBQuXqhVAMRbdgyCvoWi5ueaqFiUhBUNTXAT3n6eU9USEfwTNPpH0uPz2
	 TgkxCv3g+QC7dULFXcxxBC8KJqvgz0Ccqaxu1bvrkvD1GkEoFcAU333YZodwCEC3W6
	 UL0Y6Js15a+uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A735CEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905022867.16613.10987095323963009079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0daedd3ca25b02fa0890bf94e3f509aa5cc75a9ad478f05ecaf8eb2dd45920a2
Date: Tue, 11 Jul 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689050228
