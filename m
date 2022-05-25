Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3151392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 20:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653512279;
	h=To:Subject:From:Message-Id:Date;
	bh=zQaTB2eP6DekrQDURsM2mx7rXuVwy+Dc8qbqpWEIg2w=;
	b=IBgtGj+D2Q6TaWuBwLlRqTvAaaKIDxGGi/BUDJOh74sY6aHs8DbkrvMCQ1w6AJjD
	D5jjhTg2e3s6Z/fTpOoK2vjziCNfoUA3Slw5bQ76yzlN2f7rv7LDmmUsfPRXYj/eqwU
	qGknAD7aacwEZQP3Rzuo68yGrncpOTC0ppaakj40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653512279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQaTB2eP6DekrQDURsM2mx7rXuVwy+Dc8qbqpWEIg2w=;
	b=kHfwyZVQfMWnoSP+byG6iZMDxxAWaXcdSAsrX8CUeVBbpC6Pjh71LlvBQmZmxhFr
	PJxfpC1d1SHeFRmp55O4pQdN8RJv6Yl7oLxzGcBc3PejFYZKkdqtrt41ykebjwh8RSZ
	dfiyvKz2nugtJZk6USdOBI3iyYGluTAbtM+gFfBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd0314d0-e604339a-20c6-4b57-bbd0-dad86b5685f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff63acaf29eb02e8efbc30e416ed185627f78a5b8497c6773c28fceef52dd602
Date: Wed, 25 May 2022 20:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653512279
