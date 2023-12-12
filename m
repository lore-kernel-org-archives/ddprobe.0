Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8AB6660F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PloVVKda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74984C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702420096;
	bh=TeQEgCrxE85Pc2XABf4WhGfOJJ+XQeUD1iuXhckScI4=;
	h=To:Subject:From:Date:From;
	b=PloVVKdazmHcmxBbYZNBr1Ha9296PG6DH9umA/1WysbVBrH4PtGI5weGtGLh8+t6K
	 Ce+rFl3AGZs4K4HZp+OjTex+EgRq2yPvnLDN3njsiOub5SKGGTxt1bfyDbK07mPxLp
	 wXcDC+YiHe2VjDY2DZE1bOogiQ6eaeg5yVCCaEEBysOjwdY5Nj8m677nb1lKaxxdgR
	 Bmr1u+P2LNvGN9qHMGhrRozxQf/CLdDRfarv7Lo90jNCgPlQ/eWCxS1CTEdPaJbFDP
	 TI2/jkwUHTJZJQXeAarDl9Zq9RHUoP67iXjsdrvwgTIRb1QfmDIhMj5sZnrZYt23qC
	 thImxnXGDyozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEEBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170242009636.13543.5569539860600552002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4d50710f008cc4ee08f3b002bb54094bf5f6d399cb7b8c39a69504070ab469
Date: Tue, 12 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702420096
