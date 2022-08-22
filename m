Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD464256C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661183453;
	h=To:Subject:From:Message-Id:Date;
	bh=5StghJBf5DT2V8nVOsArRwqwz2m5UtGwq7Zx0bGoLMU=;
	b=e1xzVeJ+logrhxB89XM8FLqmUKFpFrpxIlQnGs9RzbvOR/MGVD6dkhikL+t1dLms
	QN/Qmu31hgnbff1b4IJHKCAIXwKH9kSNhRUQWDE7Uo81Z6CnM11FELcePziCvjFOhd0
	BIfDXn+IXOGbFPqMbPZk9+c3mew1lVTTDqVQW1r4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661183453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5StghJBf5DT2V8nVOsArRwqwz2m5UtGwq7Zx0bGoLMU=;
	b=cd3wsC/nxiBQOMagmXX159Kwk0y2fmm4Gg9K2xfnMTETByU27Iucj+PSGTlGhDW1
	R7prr0IQ9ll7WBDy06LD770rtD1nlCSnRTKC1rHEocJ+qSN6MJTjuoKcdkaTWx97hh7
	oRDnlKQtIIOQDnIDlGiIzqsmu+qfdh8/ASk22ehw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c63fe5cf-6272a6eb-3943-4f3e-8061-c764c1c8d350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57e9dccb84c37ff3f28ca192a47ffdfc2083ee216a32c3c81a0ff8fce5219937
Date: Mon, 22 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661183452
