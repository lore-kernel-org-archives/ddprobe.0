Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858E2F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647497184;
	h=To:Subject:From:Message-Id:Date;
	bh=3geNC2cFkP0FQai/N/p3xArTq8XDVPOOFtBQXZ35c/4=;
	b=l0jXpAQwG0y0YZHyNIdj8w/vkcssMJAZgSkw1gtYzYBuobdSK/4kpuM7DzMimntt
	6KypvQhqzgfX+Ody38qRlyFohFeuUvIneIT2azKcIkB5ML6xNFcVT2EXCTSatcBognT
	q1gRFaAm0o6frdNgb1DyIEJEg+OeulVaQg19MUOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647497184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3geNC2cFkP0FQai/N/p3xArTq8XDVPOOFtBQXZ35c/4=;
	b=aIv8xoKyhRODZcuB34mVEp/s+esM/mjDnc6YpnTy/l2vbEX07MzNnbmuJCMeKI5E
	2V102TsttdLBE/UZDCc2ouqsHqDsxHEkhegwaSygX3rKcLmyGMMsG56IMR7MLnro40F
	OXfVYvu5QDVHPxBJ9UMqWSsZ+0hH6wQjUR3t1RM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f967c05e9-20689803-d7cd-4d71-824a-ac12f3c24819-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08c918c96187a74e754fe3898b42709c7492dddb9a9e3bdbb2e304389f76f856
Date: Thu, 17 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647497184
