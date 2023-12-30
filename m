Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED1BC128
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz/jZ9/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C3BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703959096;
	bh=0gbfBQjbTEPrdp7tkjKHmd5vE1ZmtAsSlPCeEhiaoGU=;
	h=To:Subject:From:Date:From;
	b=Lz/jZ9/5cPgsJBvkt7auOIBPoIHfAh9HYIid2c5PCHkZAub5RJ95TPSzDffkMXwHz
	 QA6SIsrZG8CdEP8SMIMdUhbqE/aJzqvHBk44JSE0A2lAoJ3ol+m/iqnwsY4aMYhOj0
	 thq8mSDvZNN9yBKTlOq09MZY5f9uXRnAFDPBsoHZfEsRUBkZ+75Y63YDsqxLvEfiDP
	 YAJsPlPwbsxWiQqOqpsPuSSptZl9g2n39vYN1rbBeMvxeysigfAQxyMxhDuvAllEqA
	 hZoe8g6fz6g9jLEJYwHHkSNcFWY71m72D9uw4YRqrNKqIxcHlZN7V5m2AdCHXEYCcq
	 IUr7E+Is0KT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62902C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170395909639.30793.14698242888698609066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20530f1eb671d3d712bcfa9344da2385bdc14da6745de57582090a3a6ca6b714
Date: Sat, 30 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703959096
