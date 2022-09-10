Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA147E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793CAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662773453;
	bh=xDW8+y74gNBunm05OMOt9orr72T69mYK2huFVSbrfSs=;
	h=To:Subject:From:Date:From;
	b=SdSfhMor/XFroN1y45ioSY+nIYwhLpPoUJfkAU6a6PxSXd/iWFGkTREidNE24Tb5m
	 JGDrCZANtO8Mn+Akk7OHQ32jYbf6bpxcMrLkLycsptDVQzM28lNISLNSUjMMZcu+/b
	 /5wVlLSaCeg3XslIGSTKsbfKy6GRuqdxhgX7lrOmzf+sv5I5DW3MuuDoCEsj94ye0I
	 Hx6GaLorsVwTGEMx3znG87m8gieTKsvMLa6KBugXrw6DVxCs9lsT0N4vg1Kr3QUVZa
	 6LPWo8YzX/snWrIR6/jLgvHiAnUYaS8ZaHdn4pO+eJQF/G8xedgZY5eUVRcLtYvtuz
	 zbBX/fR9SLXzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5949CC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277345335.6652.18328850509397848211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73841e9a58552976ba64efcb7871015d4debbc5d0367b82cf759efed55a2197
Date: Sat, 10 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662773453
