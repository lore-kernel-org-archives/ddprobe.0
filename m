Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BD77B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654727519;
	h=To:Subject:From:Message-Id:Date;
	bh=F1qmyuBfQCS5Fuj16z3tb6uQT9/UYwMaRbJaSD+tWlI=;
	b=IVpL0RoeFzV9Awd5fdVdPguUasHdTDYWj4SWOF7Lh3ilmHHcBYwyZYcmKCXOUzfL
	lf1Y2Ckov5DJN2y9SNqULGgsJx1tfhWLTjY/PZlIZxO/ULRlhozNgyUGNAW5JTr0EL7
	WWgV8+sTNz8Q7tRLGJrCZ3acohus9h3xiMm9qyjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654727519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F1qmyuBfQCS5Fuj16z3tb6uQT9/UYwMaRbJaSD+tWlI=;
	b=j/smZs239nzBXRfI0qe1yM+8lbjmZf2WESO0S5yznv7xFpOkDOMPuuv9Ru3gXKNu
	R0eNPVluBtVERNywnd+gSYA4nGoNXpNZL+wbHRywJovbHxU6EM91NQjSwKYtbXN5Z1D
	Ts+VotPV7BzJB2XJhN5Z6qtJd+72iRK2SGL5HrmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018145722bf4-d3730bf2-e887-4d08-8312-84746a359c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4b680489e79ce3f7268416ecf4b3c4100952beba010fd853cd7ef8c624700a9
Date: Wed, 8 Jun 2022 22:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654727519
