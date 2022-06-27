Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6F27A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656305812;
	h=To:Subject:From:Message-Id:Date;
	bh=jJZ5Vrp6TuKmUEL7QX/E5hI9ez4YXfiDG2T/UxdEIzM=;
	b=PhacGoz8FLV4dtFUoSnsBymZXCSvTJRTe3riTwho1xik78rXi9Hc9Qn11g09J6fV
	8GRvzR2R/EuoalsAn/poAOW6S7oOKG42m5z+njoqatBm5yXyHK4RqxoBGAfczakK+yE
	K21bvsecczNp8QAFiYKxAt2DFZJOwPXSMqI0UzyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656305812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jJZ5Vrp6TuKmUEL7QX/E5hI9ez4YXfiDG2T/UxdEIzM=;
	b=ZX4dvxjNIkHMm39SjkIPphsNaBFUsR7zoBTvs+WCnDriLYQ/8+T3T5BjwvN/PQIB
	Bx4OUFC2tu/L9pLoEuOh1BjaFi02+EggO8OdBTh6Ed2v4SeGYIHMq3FQ2q6vGufC1pX
	xasMb0uYQ0sFpJb/oBVPz6rE55FlQxhqnexRUnBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3850321-b5038840-644f-4f26-aed6-d05d54688a14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51647332ae32380a66300be47565d24480e708d43ce080ae2de6c0ff9d9e0aab
Date: Mon, 27 Jun 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656305812
