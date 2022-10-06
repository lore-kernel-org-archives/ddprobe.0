Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E837F6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C570C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665053453;
	bh=AVLpII2rggRh2vSvCSLF36fuX0SLZsrKU/kSeEeLR2g=;
	h=To:Subject:From:Date:From;
	b=Boul27rYNnKNFB6O8MhNsl4Tkfb9N21ripu+5fx2ofkS1G2vnDlY+TfeuJ+oJkqTr
	 icm8NtfnV0wpdntNh/GhQgiubBrLyw5hx5nLI3ZJX0ISD569LsEOq0Zh21o1MTTAmh
	 2vIN3ZDQ29sqluy0duknL4s6iGGrY1PygWlZ/qkOWC80/obC6OvVpYMtcfPQveYGqU
	 i5+jzw0PnaozPStwp5kyRF/Gi6ATOZAK3h1rMavihAbDQx/UwHl2Q5LxIkvka3B3jp
	 ywZIzdhCBvMsyCyY8GQywRuUuBHc0IJhep/kspSijv/679k7ftbgGbsoRhDJzjzzeY
	 aDXokM/YMONBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B56C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505345333.4155.14880726858085745860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b672ad7f19ed9324dc9e7486168dc6c969b6b1a5bd79911a884b581ebc2d4a01
Date: Thu, 06 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665053453
