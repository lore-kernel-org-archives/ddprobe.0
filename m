Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5253364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 10:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644747007;
	h=To:Subject:From:Message-Id:Date;
	bh=K+lNZU/RCIPTMFY84y9l5dqpj460aTULYVG3ZQJQON4=;
	b=QI9Lo66BTU37IKCNJjbbbzMGk2uGPx5UL3yJM3nPKrQew8Yc4Xi44dFJdmPv5ync
	hDbFK2ce+4aPg6Je7FqyCyo9Q20RtmffsO6j3G+SAO8Rs6LcNRtxlyfSJv0OI10K3iD
	XesilquRvqX1tjBl2hfGhvtPGI0ZoD3Y5WMWYZXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644747007;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K+lNZU/RCIPTMFY84y9l5dqpj460aTULYVG3ZQJQON4=;
	b=bsj1Jo12tTImq5kIEVF3F99OCCavfpyinIRHv856eXIm5HFLpZeWlLEPuh2rZaA0
	EwEcBovblPoK/yhYe30tK/Grnpvd/msxq/tLUbY856FmlJeuzUPX/HWOvUHri5SSfTw
	5G2EIMwb1AGNUToYAo2maN0haEZUXgF/W1is7WyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef28fa29d-9dba2e8f-8fab-45e7-94d0-abeff8edacf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e252a97e162586565329d904bab6f4c98157174014e808eca501ce71c309c0d2
Date: Sun, 13 Feb 2022 10:10:06 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644747006
