Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EBF139A
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659825052;
	h=To:Subject:From:Message-Id:Date;
	bh=AWh9I2YUjx3BKouBQvnWQY8WyvrqrQrmfNx5vVthqVA=;
	b=JwWYhNQFlcnnjWhABZPXVrLPflolH5udbHnN1P+U+IrqrdoOf7dduTlFt/3AajK5
	s9WG4vMMZ5g3VIJeM7RGwq2/hN5q1cyo/bKbDiloIcW+sTP/C01OhvE91EKAupdz8gw
	kubS5ud5Uj73iK7gsuD9Aieapt3WNVeWCpBLhfSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659825052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AWh9I2YUjx3BKouBQvnWQY8WyvrqrQrmfNx5vVthqVA=;
	b=CgIqJP8Z1ys5nyWPED3RFsLKxAmUpv69Wya6XNkGLhnn7ApmEeBMnIY4XRssthJ6
	ve7Uj8QJjSEW92ZcFyhfOJyTspNvoJMx5noWC0GMNRjGDJwO/5c5UMHq4YOeQNj0uNM
	2qalqaMU0WRiHRrL2HZc42xpIdrtdpcEtVOHIy7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275485bbb-800446d3-93c2-4392-8a42-1bcf59cb685c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cfdfb41ce414535be84b1da77c0ebf1be0db2bc0d046467a47d3cacd5c4de956
Date: Sat, 6 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659825052
