Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF4E7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659486053;
	h=To:Subject:From:Message-Id:Date;
	bh=jaLAmB/8qqGwHGxld8FNGopRFWDNENFK2ypU3wMsNzQ=;
	b=fpy34QHGQ1J1ctct2JnR3Ytaj8ukdQ65UFJOW/3HVma1tunWBRPWc5vWKWfTocT8
	SQEq/DRPgDYKrkGFoTFkkZQIBI9kZo1r6vcklYNNMTDRoZ5nqQ22LOVUhRg4bSD5/X1
	2BodrfmXESn390IKON+4rBjwyu7AuUX1pDn2qGVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659486053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jaLAmB/8qqGwHGxld8FNGopRFWDNENFK2ypU3wMsNzQ=;
	b=ITRTmnTJZUrzYZi2SRdlmOFUF+rZ1v0S+HhfyEiNMHTYUKL7eBYo+YZiEzq7fxpW
	q3yBU7mP6VAExCOk1EHOXmShvrb/gGAkhNfHJ185eN8+FeQIYPBuRFdu1o/br24vwkc
	KRX4GaMiYpOg0dSRTeYUfs0/gXFi6W77Vpk1nyBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826113a105-d8d73a4c-a2f6-4d83-b71d-c23b57b49750-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 684179cdacef26b2d711f9e1322f678ecc3bbf00a86167a8391ed4fe6480fac9
Date: Wed, 3 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659486052
