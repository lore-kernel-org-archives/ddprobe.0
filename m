Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE03624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658798812;
	h=To:Subject:From:Message-Id:Date;
	bh=ls+62b0pdF6/EUnL72leZNOMhgK54M1Mvzl1D3iNjaU=;
	b=AOjrl89vBa2fUPTZwZvaVsGRS9mVu9aloOuzq3qy3ecvQMP5Z4n5qgcTrQtWManC
	SKpIzRmwmUnf8j7LTAH33s9RqVz64DKfe+GAxAu6CJaOCSCCuB4bp/44LDpYdZ+bj+L
	Ax48dVE1FpHomTsMZ++ZR9yZrYienwxHnFNs8ZZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658798812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ls+62b0pdF6/EUnL72leZNOMhgK54M1Mvzl1D3iNjaU=;
	b=DKYAaWmMSUfu6ljAmlWAfMsNPGKQWgtBUJDUrydN3TC+XAz0MIvFF6SddCCSqiHi
	8Na+B56/2YHn6+Tl5zCjE69i2OMhzJ6lPU5sULmEZTf7s0Kq3yH4CeJ/GTGqMpfjf+u
	w2nUSXoCrB4hwj9R1bUOU3CkCipzak7NFJj9kQUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182381d2cc1-4555cce8-25b2-4a64-9ad3-d4fce18fd9a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bb1dc32e3ddc0a222e5f58dc30d07e669b8e344d1839a065e0a827779d28d65
Date: Tue, 26 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658798812
