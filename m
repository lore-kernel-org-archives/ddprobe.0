Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682A710E6
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM6CNoRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05F7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696728428;
	bh=INlK3DD1co+zGY8IAuVuQxFqN1OtxfsG5PpA4ti0XIA=;
	h=To:Subject:From:Date:From;
	b=BM6CNoRZO4bJpY0VBPHSWHCBdSWz1JQs0cdq08BHZtSVhRYSE4XubiRPKGdKUdNLL
	 TaN9Wr2m8gDJmy4afq4tIoyhmOQWCq09aYikXLUNNrqHrViaF34X9oZn/3hqCCrgxX
	 DlWOQC9X6mstjcGv9Zo3UAk5haNHe5ivLRnv9qhQRkmrJJB3qt6QzWK641GEvBQiuI
	 C45GsvSUD3o8KjbtffBpF7x+was5NqJlfjhjtt/b4VedGmbgLqhV2HFWj4gwDCsPYI
	 V01vQnxauPf8I9AjDro3D3nU3xVXUJiD4L6pizr28z82bIKuhvwd0CPGNG3DQaucvB
	 Qti4cBlhY3Kbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2516E95A86
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672842871.24046.12567859923056563552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941213ba6dfed25a9571fe7488f0ec33577786d503cab76fffe350f161d9fe77
Date: Sun, 08 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696728428
