Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D67FA42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC997C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670637087;
	bh=m2GtbXjR96Lgb1aCvI71SySSm3UUD0IWLkDhvTFwe1k=;
	h=To:Subject:From:Date:From;
	b=Rq+lAx5BeDef0u33yXT68J2jc5dwVy2Db69QSqU2+Yn3NN30G9H6fq5veVYgJQLiV
	 uiltIOCm/SGUJqq5HxeA0IsAq/izaTbLsBR5I2vZUr130AAn/dtmRZolpyfJ2TjPGM
	 JSJJ3BkW61NfHmb6a++p+9D5B4GkQoqyO0sidFODVDYkTWrtKn61taidRrkRxOCOzE
	 tTF/867ZoA0GduHGBBqMRP5vilcxqft4Ny6NkyeACVSvZNo6FzJieYuMuP4gkq66X5
	 rmpG1OB9Jn+huAJDqVJpxvNpLX5Ri7gdAp93djtRgkQWeLrDMIHP/KZ4EoUiZJgA/g
	 ePZ5lfCQwA79Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8991DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063708750.32488.4276393389063140735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a5d219db3ef5d9b932a7f09d302262de3c7ec32ece1634f4af2232284c73d0
Date: Sat, 10 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670637087
