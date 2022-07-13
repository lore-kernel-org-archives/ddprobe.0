Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED1F4A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657750612;
	h=To:Subject:From:Message-Id:Date;
	bh=BZoJcJMQ5+I2RGDhdtAuLg/iBUYVKDVuDJCDYnH18h0=;
	b=ZSAFfqxK9GVla7TpqXXhgtSQaMAy8qyl67d0cCsigc5jmCoqo1H1Pfl8VwmVqY5W
	aF367ttZ90GWsEFjkwXJoYTMedp+4m+h3jl0SvOZOVSPz4DYWIeSNyVhgjB0asU8d81
	fhzXI4+5Z4U3sKcCeE6UcxJ/0OIndpXopIDCtnB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657750612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BZoJcJMQ5+I2RGDhdtAuLg/iBUYVKDVuDJCDYnH18h0=;
	b=ei7T+utgcQmlaJUEH1s0mlvGYE+U90EmabzJpMa+6dF9A0Kg//NmjvBlvTZ/A5P7
	jvZl4pKRIHsClJbyPV74zGDGkAEtrO18yEPPM8N52CRdpRYcldmDacSTHSpwEpSR9/h
	mMdS5lFYw4IHi9VPnHYnR0TRJOP8qEKgf9+LSoUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9a2e98d-202a4d5a-fef3-44b0-8949-3787711d4e68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a9141e7e72ae822d999a4546385678e997fe6748a3923c18e76e3e9f18b95ae
Date: Wed, 13 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657750612
