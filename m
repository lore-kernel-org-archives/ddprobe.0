Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF02EA3
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658913652;
	h=To:Subject:From:Message-Id:Date;
	bh=0Cg86BquK5axgFug/4A8kIvSnN11ATKA06mfX3G1qEE=;
	b=bUHSpXrz+pF43YRLGolDqdFJ4faApEllitUo8I/0GTeSbbdipud/3xjoKcz3CLEG
	fPpoDPBrLvVMx4Cr0S6tbMMd2Bf4TbrOtsDL7XOnSyQ6I5qtI3riusoT/+dhxWaO5xF
	jl2doowD7uyKlG0yHEf3OBde0LYCiO5lGGZ2IaAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658913652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Cg86BquK5axgFug/4A8kIvSnN11ATKA06mfX3G1qEE=;
	b=P7dAfrdrWhGn6fJEFL6JZzBTE3J3lBNXaYU9LxM0VlXdAK1HdGq0pPU6QQnhuPS4
	s8C2O1nNWMyUPbE1Obs8UquZ6jXPztWVR+t/RXoLYTDj8WFSshboWKqnKN4OWgupdk5
	CW+zR2DtEoXSxHZFk80YXCRsSp3uYABhyQP1QXQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ef57f36-b0675c67-0d06-4bf3-acd4-e967cf669c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd2326f1fc1c43e2a1db87538b1bca02efac059c824359778b5915fa846dfd4e
Date: Wed, 27 Jul 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658913652
