Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234507A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 17:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655315639;
	h=To:Subject:From:Message-Id:Date;
	bh=hRnW+fBBtqS86MJddzmeU5TaHZSjTQOwon6PcLmMiCY=;
	b=ZvHJZr61o76zN74UZIzuPS6VNO6BcO+j/s3ZjdwNVnjZIWum7SEB7vd5zoUpAouR
	xl1x64wzmzE9IXqNBIKacJJ/U0NlO0+A/M1ZFe7U/HGS3TCtXkZh+SMH6ruNPEmiUmy
	r+4KNEptaA5pR9zfGe4GHhMQVYW3Tdog+4T6JcxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655315639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hRnW+fBBtqS86MJddzmeU5TaHZSjTQOwon6PcLmMiCY=;
	b=g5Ae0bWXN+ZtBHP9WhjYTNrZdvMWWKOP1LbUV7HCz8DrlhQ+Snx5X5/gKo4zGs7R
	ROdv2XzQu4Ct4mfjwqBcjFU4yv01RA/kXgoBhn6S2yPTTw0Sl4KDvOPy7nSLbsrblWc
	edjIUR7ySGZFbMTXkydBFWe4aVVgRSoKpJ4Ily5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168802c01-4cff950a-7a31-46e0-8572-4435c0b47576-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b3da9a671ba20b4f4f87181cf05c0c0c3d1711dcc1cd21ce7795785526113d
Date: Wed, 15 Jun 2022 17:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655315639
