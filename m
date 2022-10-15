Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2BD372
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C4EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665851453;
	bh=y/PAEyWk+17hOTNRu+2jsgXMM9hOK9XNJYPLB3wXrhQ=;
	h=To:Subject:From:Date:From;
	b=mppIt/ufu5osuOTW+AQsziuXBM+W31PxdgT/ZN3DgNbCb9v47SboGUg82pZ1ux1TL
	 BpCVN/MHa/qP/CLJpvhrU0nvBGvHDns+JF9p0Wm9bDDvUbv++DkZdMilPbqLORX8Vd
	 Mm7Exfst4Gu85DjupaezsnljHhoGKIcPXDoHwl8p/w9Lo1MVqvwWPI451ANhqrD9o2
	 PwDsZ7SH2/rqCGZtiFLZA3RYQPFvRDpcbkcyhXYdsMXR8sEwL51xnHOxvL7aADuOaH
	 H6raE2abLiK+kbhlyCJyACmOfbH2GNLKL4RrvoKXht7/NAPh9WcdWZcRqkAxtYM9AE
	 hxKE9bMaDEXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE8EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585145337.4056.13505594834393798044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f7a2fef61ce160afa4796fd88dc8370e099b558772a91262ab40568ac35982
Date: Sat, 15 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665851453
