Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7C468F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 03:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653621599;
	h=To:Subject:From:Message-Id:Date;
	bh=qp2xDChuLBteGTV+ib0a/kQqxbkKmhJE4JTuNRc8Spg=;
	b=EuOR3mCzaeIioxTIhJfNuadMn+8qnLX4ibbefT/DgKm1EZv4fMX5ZtP3PcEyrc7h
	Wp0hJ1SucC7USavoacAiJq29jeXwoHnGIBFR5x4AwZ5ZS74p2hoZsuwD8xWtFutdSLs
	7AtM5/t1udnLYdyt7LtQ1LsZkqH0QySv04nRP6lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653621599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qp2xDChuLBteGTV+ib0a/kQqxbkKmhJE4JTuNRc8Spg=;
	b=ALMNLFa+QO0XW4om0ZO5XyG2Gkxp17GeoQnq/6NnL2NHpabJDHT9fwTKOjXB/1wL
	SkTUqLOjYgohdxcp/lFT0X09dzp0DtIU8xmuPLod9IOfspRues9GoDX25hkOD4hIa2S
	sn/VgxxaJMbEcaAtQfvdz8ybanr28KkrhGFRTAR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103872bfa-8bfb5141-8ec6-474d-922b-d2368c00525b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bee8198f316ddd3fbf68efbf3b082c61019f0c6f7f87e315dba2769d3d712f6
Date: Fri, 27 May 2022 03:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653621599
