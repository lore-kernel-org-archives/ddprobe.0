Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4CD635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657250812;
	h=To:Subject:From:Message-Id:Date;
	bh=Of+vlUlvLgfNrOPzrwiE46y8+tUSzpYyvup0/VNmlus=;
	b=HCHq/OMSKH2ERgc6gRJTMdxvLQ8JcRyTuKaw80UJOuLy/RLf4GrPQ3uyc8x7E3Zk
	zxLMvlfbYnGVFtLQ3x0ACO6QtWJBFjGFjBaVQBFw/8cBg3B2KcDCdFo3GjZMKkgtVYA
	9fUCguzwAFRoCEtjY2bBQ5yOtsF3wJKWjSh9nWQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657250812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Of+vlUlvLgfNrOPzrwiE46y8+tUSzpYyvup0/VNmlus=;
	b=O1lVhmPyqJ4YaZkGa7VgUCk6e/Ynxb/wFv08DSa2i1Cwg4b+K/YxRSACjUzwJb4F
	DHnQ0wUE5p4OT9p2c0+5Ras4lTtq3txdl7xDx573DkpjEjdkjM/M8VRDmdKH1Mbkenm
	q8+Tt65vejKrT/0qjiQnHCrVdt8u8BKcLy4KL6+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbd891a4-598ce35f-9b5e-427a-88e3-f93264b1f03c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1223d6a51a116655de8a28ddab908c4553007c78d7f82848c02d23e0518a750a
Date: Fri, 8 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657250812
