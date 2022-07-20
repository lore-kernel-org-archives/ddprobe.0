Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A93C26
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658329612;
	h=To:Subject:From:Message-Id:Date;
	bh=sx6peRAtxNPGjZUTB3LRqk8Hcx5Hp4uKeYP/btKZk0Q=;
	b=Mrzjrw1QLGtkCv4CgU3tlpHeFnlL+CTzOy+dVBWEwAH4INkpVoHg/Wr553PgTZNx
	Td4RxIT07tIKdwRfRKTpis9cuvYl6Biki6NnZbh51KpWBNd4s+sb/WW9vOQIVPVwWTy
	BEakEOB2vQrd60LOUAzo4RYTzYxoS0nX4NHaXjIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658329612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sx6peRAtxNPGjZUTB3LRqk8Hcx5Hp4uKeYP/btKZk0Q=;
	b=Ixy8UO8ewG5MMAFkiLSQ0TE8ZFSIfsPmbF3kAFRNXeiDfBDVQX7iR2k0nRQZfCJO
	hEvJ0XCvaqED7NqrvZ0016/J9UHpXhemiqBDxf59+PJnhyNUNmFGiSc8ooDJABvBihY
	et+Cb3INOuNxIdlMxxojcA0zpEzCBM3b18JGc9xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c25bfec-53b61b40-4ef8-4d3f-86c0-dea7f55e65dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07f6381fc461be29368171e53503efec76683ec0dc405810bb48f8927a800d8b
Date: Wed, 20 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658329612
