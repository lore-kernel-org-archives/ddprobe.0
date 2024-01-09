Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C1D3C6BF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOhd7frN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B917C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704836896;
	bh=E74bpCNDVa+Rlxth2HNCmUzigaAAwYLx5g+is0SOJIs=;
	h=To:Subject:From:Date:From;
	b=aOhd7frNwtFf7V36e5QWdvxZ9A+lBPvP3R/Pin2CUcBTnU4UapblcECVgn36C/Rkk
	 SClV5/5wlr1VyQUdbxVhL4U+YSVSrc3+N0Ff+/utawKAuqRJAhOZlSSjVUZ4oe7bTT
	 Gy9pWwoS88CunesFZWk1wwybROT03Jt+aUvNBroiTK20ShjtAkXvFMeQycVET8365m
	 I5C5pgS2BNoW48CpOlOCUxSQYFlgN90CdCNKqdv9JTpxtdqPU+mvdEpq1/JWAo04Kn
	 Txv0hP37Gh0glOGv1pi8jmO4hi/k4GoMpLSeleO4o4WxQyjWfQkRjNmBIFh499vwG0
	 eCJSpxNb5XLqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F261C4707C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170483689644.10508.1777652534456933669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde22b8ab3a8214b2768c8055ca3db7d8abe96cb01bd5d14d6ca5d3970f11ee1
Date: Tue, 09 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704836896
