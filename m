Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BE7134C6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6A5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688064788;
	bh=jJRqmsSI8EQOOT5lC/0c+aaS/N4vf6kUdKT7Ug2rxLk=;
	h=To:Subject:From:Date:From;
	b=FEhJO/BcDrN3b4MAHnFXnFfT97ayIv7FDc/U9DcDPmRcsQplNeHYc3TYMYA69py3z
	 S2G2nAckRGsYyZq/uHjQj/ZZefGBIw7bSp7hRqsU+Q+6HDI2qEVAwK4aQZJyJSvMxI
	 e3tuQQbJTbKJeZDn3LVCeL5YamzT51HdjqkW6HmkZPiGZ55yspg1cRpowDt7Cg0Uy9
	 NWBknUgFvDoDIHe+7dlNPm+xH4r2f8htFfQlptsO8qqLaYAS4DPKovhUocoiT/BQ+3
	 gvCa3BTL0FV00OCCBiURQCMvf2nKahP+MWaakmIdwOkd2NyoHLFN4QhUjYIBQAUwO8
	 764OtMXtUszeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0976EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806478871.4314.11842936253736402656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d84dc4b44762d50db43363d34ff4352f29fb665a9474587437aecda007afdf
Date: Thu, 29 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688064788
