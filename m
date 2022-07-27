Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDAB3234
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658960452;
	h=To:Subject:From:Message-Id:Date;
	bh=lYZrfIniyFJYUgw7kDu8iT0dfOnXCeVeaqsxSEypzQQ=;
	b=foIVoXGAbQEO8yRJK5a9V++gAhiSsOjz1iRL2OfBot4iXgZ4/nPvrQ92r4wJrGB2
	zvW54MaikLdHBx+ubaTffE5Llc76V2nTy197r5pZg1+R5maxUifHbLstSxmcOoKU+Uc
	7HI9OZ1XCmT3TkxN71FavdaN3SrbpRmsP3K+wu6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658960452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lYZrfIniyFJYUgw7kDu8iT0dfOnXCeVeaqsxSEypzQQ=;
	b=FjFJHjiEF5kET3z4/K2YBgkx+Y6+lETAF8dlSN0gqetkyKCUGeWjhmoMZRvYgkHL
	HySuF2p5ZOdKqcuCjANIRVGQ3xyfd3w0HdQUApJKy7nK7yADN/HIT40pWhcQds+uZAn
	oWDIQBgJDmUKvY8vklgPILqCs/E31DnEKC9uz+MU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241bf9c09-8d162197-a213-4f94-80d7-a895c7a08919-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44fb66e9be83069062e04b2027f6301514937d2ebe5ff43e7ee0ff04ce58bf5e
Date: Wed, 27 Jul 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658960452
