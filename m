Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B69323B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C50FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670971887;
	bh=x0/2OQ4m1ApgasyBnjlctlp3zN/QBZ1QZAB7oUsUpd4=;
	h=To:Subject:From:Date:From;
	b=o8UEOV3T967riwyInAsI2oJvpgcdaXAFuWXQrkGKpFsPqi57aMWhvItH04if4sIhv
	 xECtCDtsXktpeGpjU7vzA9X7Ei5lM7+rwti6xZ1maXR5VJpfVKeUgLuUP/LeikPndT
	 q+4+/iVCMtHJuTRSLIOMdNbbyotsIz1SsQHrsbOpNjFdv2lpMVJk/P81pa4QfClxbV
	 wSKDigmKD/Yr778J88Upp25rK9vvhj6c0gni1Ybh8AqMkV88CfnBhwuMRchnoYFup+
	 QUC9y3y5j/GdEIROpRFwx26HnzvoE84wKwj+4Jy5lUqSG43nT8dxMhn4aPpgZ0Wk7F
	 zSX7/FTOONhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE58C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097188741.7986.1165449850357525288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7b83cd17935f5d421dfcd7437b058f4d4d6ab2a43bdb9faa8cd8ee0cfb14af
Date: Tue, 13 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670971887
