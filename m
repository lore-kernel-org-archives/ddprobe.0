Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156F1290B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656179812;
	h=To:Subject:From:Message-Id:Date;
	bh=vxapX2KTJpbbRC7Is79j2bthWsJMAM25tYu5pPFsz+Q=;
	b=fvNwMX/IaP0zgS8dbQDht6YSmW5CT4NAYURwFdDcEgvK9bzUdv/XW20FlukwEP5V
	63P5YbRS+15QqZacBGvpCW/oIv1s5KQNlZ12u9mU0TOT3xCwp2ayft52MHZau8nKGXq
	0nGx0L64qbTLPDMxhsLpvN7rRYKDkU03BeqHVjVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656179812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vxapX2KTJpbbRC7Is79j2bthWsJMAM25tYu5pPFsz+Q=;
	b=XqF42wTErni8JWnzg9itg7n8h9+LRECfVmOIqehfPIK+gI/TcwtJkY3OehgW8um3
	tMWAs6z2Q55B+EPPb0OPaJvGJH+n3pBIhxImlGcIT9cLLJoci3NFXHgqtOeh3tMX3Mb
	KuKjB4sbJ5erOWjNIqCmEwGZbcZ/Qtimct7iyxuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c026801-8c7a5194-ca7c-410c-9f22-3a03500a1072-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aead4f15676296531ea832513f7da45c5cb5144db87ce30d1346f7bfd53b7f1d
Date: Sat, 25 Jun 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656179812
