Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BFA1107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659771653;
	h=To:Subject:From:Message-Id:Date;
	bh=SJzYDvH09pOcveAuxyAWZrYzxJTGafCFRR4ZA9albt4=;
	b=UAYjwo6g4t0pwHRvLo5IqoN+kqv8oo48fEJPg/qorDsh9jZraS4Qu7Tf6JfUaMJj
	7lVhnwu/sGbWqdOyveLpyNWJF2dtMBvIxDE+ahhHDe6ZQeDJL8WSlN12z9hj/iCzDZg
	iub6qosKP58DijgwdgSaewpfvXBbzokulHZqUFU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659771653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJzYDvH09pOcveAuxyAWZrYzxJTGafCFRR4ZA9albt4=;
	b=Go/jxvQjxFXUBqR26L3T77x2AvQrywpDcxM0cXm+emZddBTko9yjAGC2RpBCQF96
	J/gQq9a9kUzXq9nBsL4vgaw0h2DXTdqB0KSzR5YWjk3b03cQ1doxPVGvywKj/81d6Zp
	RD7K6qUqrXPLm2hZDIhViFSApZGy7RIGPUzzBMIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182721989f8-617d357d-be63-4d68-8b2b-b1c81d3888fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 184a51e7c62b63f407bd2fc2330b430fbcc9c6369d8f7074137ac2efd8585773
Date: Sat, 6 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659771652
