Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268B12904
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 16:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652979419;
	h=To:Subject:From:Message-Id:Date;
	bh=EcTVG+ikOwStQr1wJjViJPtTzCb6HT1+RUlc0fKgRis=;
	b=iRb9xEhG+hPEDz22up0K0H8qHZsrIGSCGxpgccAsSmaG5gSR1e0NEL5iEirQ3XoY
	uOWNNL6DUeA9rXkAYLhTSPiLz03Z8aWWv8b5AIjPTvb4mR9QGSUKtvlqpUfNuy0zPFe
	BG6P5Taf7w9Rb7dG53lyHc5ifVZlV9Q8SzjmkEZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652979419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EcTVG+ikOwStQr1wJjViJPtTzCb6HT1+RUlc0fKgRis=;
	b=JhY8BFlNwLFBId3RROozqn7/5eU2LwWXK5BZSDXnr89fo0ISH3Lq42r0oG2xlGR4
	kJXQAQDbo77hwpKkVsr3rHd01g0vbgPQYfFuprvwNFMd61WqoI9+YxA/NDdCTJ7viOJ
	PCezmkvlWu/fvGiFz4vshQigU6jC5Maz51o6jP0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd4048de-35200f6e-3e1e-40c7-8232-bee9df82ac96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4963cf7e8fb1fb182b4281f808373f9214522bea77704100b45950468799976
Date: Thu, 19 May 2022 16:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652979419
