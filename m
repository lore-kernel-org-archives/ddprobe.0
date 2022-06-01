Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E5D7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654107119;
	h=To:Subject:From:Message-Id:Date;
	bh=LCMiWexCnFwOmYRlpK8pUvlemm7JfcYOS13w8HDmVUw=;
	b=SqodW8azZqfJE7vJa9BUObPo5GX6es3WZKmtWryxprVOdVJxEwQIIXSK14OK9Zmb
	IAvbo9rw9yh5muCAqYqEG5Dsj6b63mG0PusW/d/PDUFb8NAxe4WCZvYnvqUHIMecu9h
	9pi3Q1txvPP5iINs1o6zCT9eiOTM8ehPdh8vtwEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654107119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LCMiWexCnFwOmYRlpK8pUvlemm7JfcYOS13w8HDmVUw=;
	b=Sck7XByY3aDNuyj8hy1onSkxaYsOIAIsxhS8wNe2x6ccGI8LYRjeqmRSy1415chZ
	fuQ2g48Blw0NX/1r2psiblaOkpA0l1cRAD0pBcmSdevg9sigHGvZvCuUpG/+I1mxQX5
	jBmDMtRLEzx5AT1F2mDqqTvqWWfTb9tuww/y82Vs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120779ed0-0acb0003-8baf-4b44-b74a-87b1f86bcfae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b78782794ca7d26c2a69c21c12475913da340dca8f3816af6552c6ae61c1d7b5
Date: Wed, 1 Jun 2022 18:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654107119
