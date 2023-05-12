Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31521138F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 21:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A4CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 21:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683927305;
	bh=SNBwDP3nd634tpFBjmCUgQDKkcvgjvFeFhMl7yAAN5E=;
	h=To:Subject:From:Date:From;
	b=MfMo2u1omm+D1p5Mp0W/W/rCELUw6X88Y43WCuKrH0gdcaLesUpex/8GvPJ43mrUT
	 J4NBbC14bCH+TSlVlaJZmOssylN+tS0Kb+X44cfT8p57GE2EIhTmWDeobP9AXfiRsB
	 HIMDf+VmnPfVKDrZUIzRh6df5cJhCmt3QvUJY6XIcyGEKYe8RgikPDs4Q8nzvTjeqM
	 AbGG84EHiMZaERs99rqGGe9gtpu2KFUO2LSjtyBLgzEuFad+HXYx9HI0PzhPCptw0j
	 kZ2ALqIao+UibyGDKteB6i2vRFUL8H5shcCLanwV6vacxiHRxrLlG1U5EdDU/FgCen
	 fQz1iRl0pkWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B987DC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168392730575.13498.17867286284893734373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6ceae4d880b7bb17a80ca3dc3378b186e1d502d8405a6ba66066b1ce3d3897
Date: Fri, 12 May 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683927305
