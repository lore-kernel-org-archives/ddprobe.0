Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1CFE6134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647113184;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9lvkIu6vFydgmvzxWfHlY1JcvDekw9gUYDnpuGd4I0=;
	b=ebQJ66p7hPYxYn1W8Yyhv6QkqMA2B+jraKPSzwj91LbNE+H0SW5WXDU6L1bWGl/Q
	fiC3PgDP4yL/bg7ZWNqlyP3YAiGOuXLd6n38lVRxAVrs9/G/83TCH61YaRHcftdPrzn
	gmy61/eClXDQav8Q8Lgx12iRHIu9IcNYVUeaamNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647113184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9lvkIu6vFydgmvzxWfHlY1JcvDekw9gUYDnpuGd4I0=;
	b=V8BbFGCcr903DFXAdilWGUQFadZ+kKifwNHsVtQbFa4pHWSr4ev2X0/Uq6Djt+LR
	tVOgB1cV36lMdPJ+bD88LYAImc+kSGP11musanMUR3d3IpLlV0jNxq3X7ezCTtebxV3
	6wWMkT9+ALmft6pSCtf/jYbFCjkTxoZTUPuTzkRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f98a5f7-5c00faee-563c-4f65-b1a2-b79026611998-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9192971f45c3ccb32c4d80a5e52c48955e6421d02b3cca3b0e5422ce53f1599
Date: Sat, 12 Mar 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647113184
