Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6B96ACA
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645650985;
	h=To:Subject:From:Message-Id:Date;
	bh=RVmM+zzIClLvv+XU4vG+J0bIF7vbu1jP54wKmbqSr+k=;
	b=msukMI61nKFK59IVnnFkwaRL9hWZYWQ5ZkSIzbll5vdVw1lnpoJBBUEbkkgYKbHi
	IlSEkiq2buZ8NU8L96i+m49lcu9n05q7cJsGkbY+E7COSvJza0NkHmzceeBE+Xzm8eM
	G7NvE7vI1gLVrJYgvXDqTYwOtTRkgCKE3tliIvvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645650985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVmM+zzIClLvv+XU4vG+J0bIF7vbu1jP54wKmbqSr+k=;
	b=KrjWOk3PDkMjTppS7mHL9UmMc2yBUIqI+upV7avKKt3Kxhv0tLzdN9lJIFASzUQR
	4sfnnWb3xgFkUB+FSM6NkmFPsZlhaHiQuXJ2JR1Y8BkY2z05+vAlQFZ1gMtVGzZbv1b
	nwDCnLITur1tDEcQwx99tu8/G5EBrYdNDNBoyw70=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28713f94-5cd711e2-87d8-43bf-8429-18f786cda8ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d1377f8100e3cf9f886d5b1666076fe70f3b77d0148c07a6b5127bb86e45d26
Date: Wed, 23 Feb 2022 21:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645650984
