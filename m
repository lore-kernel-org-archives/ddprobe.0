Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA6CEA8
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71842C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669087854;
	bh=qiMPtiR1bXlioIFEhntij7cyJ0twPGvo3gVknKKyhKk=;
	h=To:Subject:From:Date:From;
	b=OhQEGVKbKQEpq/n+k2LcGFBfEEzcDC1aFgOagbrBiBeCt2o+Zvpgt/YE1idWnOw8j
	 HUZ7naDNPR7rUcV+BccQIq17ElBg2LTD8//X1UjYBlSopiqLiF4430sAspDFSjWvut
	 YzZbE2CO6jOV6Dy/WNqBqf3A5vfRSCNlDCPgwn0CrdSUT2w5JhxEznelP1MdL2OmUH
	 GCv2qoTzpdkPsml0N/5vdsCWxVOayDkyMj/rn94SSx1vCUzvmthgS7udA3YmCVDTnw
	 xxF6IFCe4c/axGvo7E5GfS68ef39XvdGB0KNETdlY0a/y4N89YoeCsnkILFG917g5r
	 qEQ0SgqplxmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569F9C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908785434.20158.6301707608192330733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bfbf206be2e309540c93e985e1ef239bb63e09ed92946aa195b24de45872e2
Date: Tue, 22 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669087854
