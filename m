Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79431847
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8084EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670820087;
	bh=u8ms37fl0WX6xZd4lK2Kcu/r+GquOkflLjjRQyPVvoY=;
	h=To:Subject:From:Date:From;
	b=ADkUquiD6ep1sTm4TCLs/7eZS+8PkwmgxZYd5vlHyAd7AqGapvjDmkcNWimCmMOPc
	 fsXM/xx/i8pSLgYqNDM8my5TBsjeaqNho/rbPdizE6XF+DfYvMy6Q/s5Vtu8tqIokb
	 7OJE4etRbrKkA3i5CzKP6XCfnCAMKSt/VqAjadXWjX1sYpVCNbgnzWPZtQFr5xKJej
	 2fDis9uXbtLqSBccwqDhdYC/W/ArlAYwVv7H1iOU2C+4/JcjIQJbRg8TpgYJ00vETu
	 g2l/L/u390nrS6mLBY07HRDoQhhC7zsccgaXyREhVX57IEb22jv5uo/BcfG00GZG1r
	 lv/un54G1F4ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C69C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082008739.24608.5174738661514686421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8f1fca245339c9561798b084674ff1d5b9f60d00f147806932d0e2325279d8
Date: Mon, 12 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670820087
