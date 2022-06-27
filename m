Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116B420E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656365212;
	h=To:Subject:From:Message-Id:Date;
	bh=8lo2gvjMo5uoJokoxpqOf3vazwsEWAWuIJYZv8biPSM=;
	b=RW6XjFQ9zF5GZS9FxHCOF8sGFZXyhVl1iCeBHfCzhCvEm44tdpYUr1L0/7fGoL3j
	/CvqoZAWXzbBsr0Z4eDb/VYC7MBUnbKGONNUvjWKME3Z+Fz5LDkbfTvfILzDnXXW8Th
	/OO22S4OkE82UaDTKYivV1NSZtzrm+1qY0PPqpdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656365212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8lo2gvjMo5uoJokoxpqOf3vazwsEWAWuIJYZv8biPSM=;
	b=I5s5ue+SrQEHPHKKpLsaozxG7FPNJ36OnfEU9a7/6cWhs+Tyr8p5JWVDzj/lM1Ht
	T+Tnm6MlYij4DF75BuF0odJ+YfPnz5aO0QJm6RsqFs04DueMLL9d28JPiqwu67y6ZBT
	lKLNrCTAxpnReAy13tmlVX2fy2QIOYuanBXDbkm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a70f6260-0113f179-b469-4002-b714-f5ecd239aff1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 820cffa026c1acacbe019a2dab87a0d28228f43b33a480dd9e2b19e1b712829c
Date: Mon, 27 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656365212
