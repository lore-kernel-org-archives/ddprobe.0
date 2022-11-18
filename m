Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C8328E3
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B724C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668762054;
	bh=mCOuXWRFGIdo2afacTmSIeEqTR4oX5p+Eb5hARe9xXE=;
	h=To:Subject:From:Date:From;
	b=AvHsII1FArFFATFpfG0vP2iwGnGQhJCuW0KwEF2hPyITOxMepHbdr0qTCHdiwgSjf
	 Ta2nLbWL1gbh73+jEFE1WI4ZK2Pn7nh4yFf06G68qRR4Oq4x3D+mr1MI+wRAjQmETX
	 hBqp1aKztu9gTJasLIMPPKMfhnhAGRtPk+S0KpIFxBfrFAIfcPEHMaOHIfhmjUWYEI
	 ZO0NYmmx1B6cfIV2oorrsnQ9Mg9bmw2C+KDg+pPO42xRVtfF5pC2eY6OyNDybVZonQ
	 vHTQ9Vr/fXMiw99NkzxkpkjohTsCke6gyod03hqbrBnc5xgpG2d7IhpFPDFXfCp/M7
	 ATRv/BJqi/6Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61103C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876205438.9894.8746291266768808516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932ece4a3d2a168b918e3c6c48b8760104b1a264df1f2c65c4135de0a2e2314f
Date: Fri, 18 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668762054
