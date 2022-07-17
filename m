Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8077D36F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658030212;
	h=To:Subject:From:Message-Id:Date;
	bh=mLVP2zseJ8k0xB9Yttv859ZKkcDoQkq0fb14WIdXLNQ=;
	b=JQfsSvcX/6ZTn3BwDFbeHd67KeUwru0QyRloWfDpuh1dwMwcKOCVYpmMCm9YxRIK
	R1z8hiHu9KI38iQFKDdY2npoYWQoFj8aLEc0E7hzCwJb2oYhAiTJz66G5+1I9Rl7rbG
	8Q9hcUuLC6RFtI93HbdfRLwQek8Qr17xClMPeBT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658030212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mLVP2zseJ8k0xB9Yttv859ZKkcDoQkq0fb14WIdXLNQ=;
	b=ffheC7iKSIyVsSn57Dq5lpYw91Znz8KnI+7zboCCUkN22a9/J8m8YDi5y3mi5e8E
	sNNAT55SdeOhaqs5uskH6Xz8+L/OzwFFqdzQedXfo+k5qo06uJnsEoDcHHTbKaMmIx2
	u9nIXXNlHayU7ZBY0ytHDbMyA0Ye/eSfKA/49HM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a4d4501-7f97d933-128a-4573-9a64-67b3a0a9fcb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 292fd21c24ee895cfa3f2511848863fcccc648eb75e8fc9ba4845b55498fa5cc
Date: Sun, 17 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658030212
