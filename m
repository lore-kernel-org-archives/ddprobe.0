Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAC85CA9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E149C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670940687;
	bh=Qyth17Odsuelk7xmSPG4YdB9hx1IaHq9nZGOWEjcXjw=;
	h=To:Subject:From:Date:From;
	b=GcsvRlrwcP6XGYt+lsM78OxDxyh3r6pAuFDcZbrjc8MvzRg1FTWf2p/ed4xZfrcxv
	 yvYBmhVtesPEBWTRWDVmAkYbWMUDiRBtQCJAtfIz8SGX/xlYXMFFqsbwa01mCuc09W
	 Gket3V/DBAGPKO3RsgNFN60YL0KYAA0+/PAUlyrrXn5dT7pXr4bXjjsPmvVOs97KVa
	 3dHR2VrRuLIWMWwTkrvxxNBYUyxMFhIf7y3HMZoQEWC5WMcMI9GhS+Ocy+ZRFgw7EN
	 HWFiZQ8ODvooM0YH7yKs9FFAPPVt4nXNcoVm11XfInZYdh4nMTgYqrWKgXuRAt4cvG
	 2XUEVclMfJkJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D23C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094068745.20555.4562325460159817851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f0429b084669e7a1c689e10c39aa55722b6703241ce69e30f0dff29da7fff4
Date: Tue, 13 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670940687
