Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD2D2575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656508613;
	h=To:Subject:From:Message-Id:Date;
	bh=69JZas9Qc6mf6lESsLlLMibXpSEOLQ6+rXrx1q1HrHk=;
	b=TXR5CnNmWmcFYLaivZfacL7WpOlFYIpGVw7HIcOt+eNuKvuniuHcyFF0pDrnAXRU
	xbu153y9cyRhVLCbchTXQhmq6jPv7hNH6Zur5ADqCckk4eoWgstdwJmVeQR6DjS5WGE
	a35s9n4fOC9YFYdYTpBgcBaTKn6rD76o1skigtqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656508613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=69JZas9Qc6mf6lESsLlLMibXpSEOLQ6+rXrx1q1HrHk=;
	b=FheqinKXfLI2BmTpdTHppVWJPHsEsA3JkYZSFacgtdU4485gXqdXTeECjTfJYATi
	sxX54k9ZAn2zAtznm7q4Ia/yD0vpyfBnxt7Km57YTyczmltgFuGqQN9MjPXYFFMkgur
	bKTg/KIPLOXZobIJkp0p0wGrgSFE8RoQV2/OimWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af9b7ef7-f7e2c550-c419-47b3-890f-5c6e7c68f8a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88a3f5343fab8c8c0ab14985b72d25a0527db836846d2cf573b336766a7d110b
Date: Wed, 29 Jun 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656508612
