Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547F539D
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 14:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D673EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 14:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677248105;
	bh=BstbRVjMeUv2e3yOVkr2qKbi05CzM+x6nBXCgvr6vig=;
	h=To:Subject:From:Date:From;
	b=lYpJLp4UGWpJZ40D2Y8B3TFiPK1/q47X1FdpmLH/pxvvRZHSh7pT2Meo+PsP56gEU
	 /9EMuwsu7qBp4NbHMAWQw1A3iAhbyC+nVmIJYIXXXtTb1f+N3thiu+ePraS+deDtS3
	 z1Cm1qAAyJYy388C9HPj4E0hjVDIrwqHpPbqLaZJiHxfl157ZBYPR6H0hbhpSqUjnt
	 ZaB42NRRiBTKDaWrDjODs2bYBklcoK54lGd7qPt3DdDKEAcRLpE8Xu9KpfoSZ42vKZ
	 TH420qy7qD/x+MG7qlnlQ2ulRACZAPRKEk4su4CrHJScetcfsNN3/o+CGXqtDLTsbA
	 9Op7CO1eTV6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4608C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 14:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167724810573.26405.12059588359188963606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a57fb2e91e5d1e3be3174bc11f893e4aee161c1416e84d0b239a798fe477511
Date: Fri, 24 Feb 2023 14:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677248105
