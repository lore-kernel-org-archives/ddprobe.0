Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B637E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D86C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668993654;
	bh=xm3aF7aRWMKVhHwNCveFv5ITR53al6gkvxw1rW9MOYA=;
	h=To:Subject:From:Date:From;
	b=ZqgED9n6C9oAfmA4GSFgLd58N3szOmfmTC+sEM2vzh0IRvVXIn8TEfxXyLn1/Ufuw
	 zxSTeet/6q4erPDrMtk0ilXJ+sjgAqw65GOKJF+/gl1caVLb7EguYOcHCNKDedPQSr
	 G8DB9Ta7OIkhXnemCcfS1jN6vFirEQZCtq2TgI/LF1uk1zXIRmUpgZ84M8PoXwEkSo
	 PNrl+nPYYudO3UonTpVqB1XwUaNdkdMpmwUSyoJKanrrRxp4JQNhu/kf5+CaJzLRjh
	 SzUOvu4lFCF1Sf/IvPgh4ePfbFPU4QpegLwhpMFPgele5ZC7j+JpDAN/YR3wiOHLOS
	 rgbATNb/EEC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54011C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899365433.6724.6715620583802053488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ab025e99e874477a4a2756c791243a8e2fdeb64724c8c57d076bac805ca005
Date: Mon, 21 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668993654
