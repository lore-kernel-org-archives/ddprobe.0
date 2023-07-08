Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7B615A4
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688799428;
	bh=AvGSizAtPjgUoZcq3LNhzDPgH3UzQo4KeBndr/O9V0Y=;
	h=To:Subject:From:Date:From;
	b=uf0xOIbKLFGv+UAuedlEzla2YmZLxCokOTOUXoid+bKLOLSFX1AZFehJREJNeWz1S
	 hf8YuNZ1B4B50upozb8jmAAAf6WX+8UGfBmQJh9KVswxPpH75Jj5yfGLTCr7w6/u2z
	 t21vaAQcSeowVYF02/De0qPRbLaiX9z5kF/lEZqdoCw02C2nPcGb4JFqvo+lJaCDM5
	 Vz/jd+nZZCWuHuHSG7vxL0wSqex8bQ4sDDwKSgAmE1qSoctrj0wVsiuUyl1W/hBDeZ
	 oNj8NrlVY4Cs6Rm0Uxrq21em56aRuYkG1bxRdk28e/6pmcC+dLQJdi6irkC0eClt1T
	 gTp44ZP8fjzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07B1EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879942871.26931.11002570321115260958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b995ff042252bf6ec9f9941dde1e5dc9674fa99c3c39b8fc2aa938bedd6244ac
Date: Sat, 08 Jul 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688799428
