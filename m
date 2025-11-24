Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D877A1B4138
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763961713; cv=none; b=IP91m5F3EF7f1WmdXbP5zmqDdWhhsatrRoM+2p3dTUPCe0QqsLa5xURd7sUTUHc1NgYepTCEoLx18t++nCdrGraGTJzUUHRQyiXlmAPOvuuzSuEDxpWL6RQhfO3o62Y3GFM5F87nNFNxKmtF0CiXksA9r4GSXEUw/dF9jPEO+mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763961713; c=relaxed/simple;
	bh=jpVRLOn1pXK/VOtc66qa0/bJgXXnCCQD6Bi20Cgr4R8=;
	h=To:Subject:From:Message-Id:Date; b=Ao8keoD+3Do/QjnzFxVYbNNwR6dGIzaDqL/KugV2Ds4CqhJMFvr0Kp8dxyYI+opdMdGlIgWKN6KLLjfz+0SCVFy0XFXmCA7mlqJzeLQnSI6yKtUAMwxjHw7L4+n9dDKZ0sCr0SnyLc60lb4FN8G3Nbyr5wlc4jjVK78FYRPrObo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qovRLZoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qovRLZoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48EBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763961713;
	bh=jpVRLOn1pXK/VOtc66qa0/bJgXXnCCQD6Bi20Cgr4R8=;
	h=To:Subject:From:Date:From;
	b=qovRLZoJK5r8V2mb8AT55gG/CWzMLkz+Q1Qz+BUM8nRV7M6ggD9gngPT3azCOGIgC
	 qFj1ZzJZGWAkoZY6aQAcUeb1Xwc7U57bMY5YSciextGedXP6oqDJRv9384KyaAyZCC
	 qNKc1iG/nxmCVciyI9wABtfAoRO7E1xNwXWt7/HF0zHMRTvVhMqf/NDJQl4cdZdweA
	 qr1JH1/qTOHQ7PkShU2V82MgOxp/7ixku1UPHaFHbmr5UseDqSnMr2QlrgfJ2ijRJ/
	 Vcuoo3rnpZTvVsgxFcuormGGHZtjYef2+xdh23fQVUiA5ZCQF6VRFgESc3DvRiU2Xy
	 wur0E3Uv4cQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925DACFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396171359.3091.31126509345439581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40338b1a046831e1535b91079151a4e1597bc968bd257df5b6869297bd4c3039
Date: Mon, 24 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763961713
