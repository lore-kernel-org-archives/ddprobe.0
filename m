Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F30346B7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656356812;
	h=To:Subject:From:Message-Id:Date;
	bh=c4HqstOwjOQaMJ5goSfBNqd9gKAjslm8uzNxC4Yd9fw=;
	b=QOf+LttqT6BpGiuPvA7JP0zDHU2KaNAR3O2OQCFfg+5VbJ3ZPpKqjfp3EYFJdMul
	sDqPJWPk5+wvzFDOcvmIqHesrx3kBF/y5XEvOczmpxXRb9kaiD/EMiRXB8+kTYhxgn0
	PCDqOF6U/GFte7MnxIeeaC4CaU8dostJIC4eoHE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656356812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c4HqstOwjOQaMJ5goSfBNqd9gKAjslm8uzNxC4Yd9fw=;
	b=AxDLOsrC5NzgacHS6sXZAw8REHUssUtW8DeHhwoDNaQRi+2NLr3M0tdgA10IEyIw
	VFVZr5U8BoGRRwPCUd06OfB/KBAqJhLG/Kr8lN9eHrlXbp4DW+Cc8j69loyoGwqjLDk
	oWOZM7e/YD05A3rKtcgdFPD6GJCT3DfSgNoiL7rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a68f35fd-fe900d23-0919-4074-ac8e-5104eca973c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dab2775bf44f78d5cbcefc7d5fb8781a7b55605dbfb1e7eb9523cc3878e56b3f
Date: Mon, 27 Jun 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656356812
