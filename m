Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390217E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654292699;
	h=To:Subject:From:Message-Id:Date;
	bh=FPOEy9fbwLwIZmWrU51gNcACdnemx/lqj/5BP6y7Q00=;
	b=a3sKlRc+sMiFubZhsTudLQf4MG74FPTwa1W1wrRy3Y+J4EW/dzyoQJJxdZ5cUHSB
	cpL4UOlzGIQM0NvkwEktDkyjon+ZL9Vj8NVvNhFi9WW01jaKQBmnC11s3m5so1TCR/M
	VqCbG+iBtM6b3sxBCr4l+5P6njp0/r546DfK21uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654292699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FPOEy9fbwLwIZmWrU51gNcACdnemx/lqj/5BP6y7Q00=;
	b=Phcm54tszCtyto1caf1YrDl6XyfOyLh6eH+gYTfRFDPzO6P3LJnyh0AKRr6LyJHt
	CmocKzzGh2FoMYOoYCKZuUUQK1oG3AEaGTX6YVhTWthhhamPS3YG0FC/rmYc00fWQc4
	Qx56n4gxe9Jyri+t9uR2yA2Gp9nyeexJ5bx3+xGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b875924-67f682ec-92e5-4675-9371-e85f45d148dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c07b2aedb75983fb8317323316fb95ef3266fe37fa67c7d16e1c3fdc9002fd4
Date: Fri, 3 Jun 2022 21:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654292699
