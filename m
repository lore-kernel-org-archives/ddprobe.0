Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D400F29AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80405C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661632252;
	bh=RA3pP9GLhyCdWPUxPrL4p1y9onL5pd0Zl8/vw/pC6KU=;
	h=To:Subject:From:Date:From;
	b=tPCgsOXvGhJXjaH+yDClIBXqfd9AuDKWt/G9AE7MW3fd1CbR5e2zRk2tENQHN+uOA
	 0ICTdUR5IGfs0THvRSXr2GR6ggEMCDlYXdmmtGiuDJ90G3/ccWCXsysEhhCopen72k
	 sPuPCcyQo2lOTts5sV0agnd65Oh7l+1uJqOpmFMaj/ayJPBaD4cIEGUngsOtILx/9q
	 3C1bJmggHqU3HcIdRro6T0kAr57Ihb5a0sxDJ1U0/s/p+sN3ksvj0qtTDVCL01Hwgv
	 NwUsb0mYT6ZHAvM/dToF+Kr4mTTGkY6wT7ryCxmD6OnttJj9D0Jkt9hRueooWjQUik
	 dpNed/yf7xofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1EDECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163225236.11433.15668174098500045863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ca53370363d433412626b8b0ed599892300486783c4b150684ee9dfa909ba7
Date: Sat, 27 Aug 2022 20:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661632252
