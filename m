Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF13B28E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4C0C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664641253;
	bh=8+47QUQz2K2FQUP1uDnK2pmicgV6SO/owtmAtUhqvqo=;
	h=To:Subject:From:Date:From;
	b=mHFJNDzUpMvVUFKsgYsNacfFkDEV4SXxDFlGKpKqfOvfdxraRrHdxA/sScZS0c04i
	 mZPYVn6Lxpbal9aPbESZtAhJAbcRfMwaaWFBXS4BW78+/Ur1dBjZIE51EW/mC/p1fG
	 Cni6EgacQW9pg+mWxNQllKHnvSAIDKlvWj6C/MX+bNbRCQk+DriTYGM98dmKsvTyo4
	 KDV1BboN9jT29zUZnVGjP4wJZOSK88QluaSTWYVuPhkcqulO/T4eDV0b5pPcTwAeTR
	 9VaUjkc9H3PdQkqO/Y2kUKeAJGuMgeBaS24S3QWmCcOPArtHpGYZe81HexAmjbuDAM
	 eqCOECOPzia7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548DAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464125332.25356.17804362294271624830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88766f735f382060f945d1b717c4241c7ca84fd3a01709b06ae18523443e4dd
Date: Sat, 01 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664641253
