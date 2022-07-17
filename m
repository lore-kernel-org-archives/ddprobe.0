Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2149C2575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658086612;
	h=To:Subject:From:Message-Id:Date;
	bh=oB7DbA1ESs8BB2fPF1j6Vh9woM1xDMRfiMLCUyAA1Bk=;
	b=hUBHpI/LWeqhTw3KFt93t5p3pW7d7hDb5eoqsO2UpCgv5GdU7gTMDHDJsySCRHP+
	w0UR7A3BWfUBurgaVJecW5GBqwJagSnA5egCRmTmiGSKVmp4rjonmr2AnALXD9m7DhP
	L7iDOwCSnDnnAJIL4QqwQQS/CLKMlec/MwkBnxc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658086612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oB7DbA1ESs8BB2fPF1j6Vh9woM1xDMRfiMLCUyAA1Bk=;
	b=d+MPjVz03j4YE1aMY4sf4p8AwFIscoC1RG+Jr/eIIYqfIlhvq1cCCqTGKOya2y/I
	9EimMrLs1x89Q308vk/U8HjWg7ybRoCzQ9Fbhc/6ifNvsjBCWADOejvn0vRfNi7DNs5
	hLSM8jupSuT/iwY9MO/v0tGAn2Lo2MzcKXjS67jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820da9dd58-82299750-e3e4-459f-87be-eb2b576ee015-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03d4007be2b32f5d4e79c2b7c9d8bb42f811f5f55f33b35471a3dede970beb75
Date: Sun, 17 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658086612
