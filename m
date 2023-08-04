Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67656A23
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D47C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691188388;
	bh=J2tWzt4eeklHCsreGBLv60Op4jBL+nvnPBDNjjOZf4I=;
	h=To:Subject:From:Date:From;
	b=IMgtC7RREPsBrpDz/zvjFx+FVIYKaXSfnF2kn9+uhbrcm2JKEMkwH5WFwpj7eoaPZ
	 1r7sed/yINtJuqRtfRTjsVkOD5HH31+qp6Wm2BOcsNvgH/CVHHWxoXAaTRGPiqbWjq
	 hN/nW0lcOzQCJBw7gJQ0GK7CPcD4gfpVLWFXYlJw3fm9EVnjbpjClO0qmTx1bxV5TX
	 EvQyRjSVEkUPR5CTvFEfR1VESnDrCf3to1L6WMi8hVNrvDkIXOIKxnaW8Itq01PSEP
	 ABQ+NCW//i9iHO5cf5h7A+4gw4VtgCdohdK+v0ykEfD/izLWXZFuuveVkqC0XNoMJA
	 hZInJQuJD6M+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2845C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169118838872.25725.10036436196719173800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a303634ad2e01637b82b7d3f8818723706f4232c1055842258040f4b6ce41597
Date: Fri, 04 Aug 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691188388
