Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7927C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659634252;
	h=To:Subject:From:Message-Id:Date;
	bh=um6n4ri4marTJGy9FnJgmCnjxQZ9zEOgPRu6xPPZs/M=;
	b=jmUoFtLEuSJX2dDqeTTz8g296809QIxKN6EyJ6s3unAFxaFOHDBQSRLs5vupzoM4
	0VRYCHwjznt7lwqGtrh0X8x3aF6vUHTTlMSIlNHGc2Rxd1nIJZONfu8Pswz2c8mQkaQ
	c4pSKPgI8TSbfHecI5E1YIxbUj1FL6lp7b5cNaGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659634252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=um6n4ri4marTJGy9FnJgmCnjxQZ9zEOgPRu6xPPZs/M=;
	b=K/CAMP2ctlUgXslUOJ5ZqGGhvZNm3xrBX+vmD/3e1y4Gvcmtwi60GvhHDcI1BhMF
	TnmcNNeZic1/+kcxh1m2nqQ7+GYUSbeFQsY+09n/8IVKhQjuqCZNK8Fbt9q2lbHiD6w
	Uxu/0g1k26lYc5Krluc0p4LmVqOhh9apnJQFyVP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269e8fb04-30813bb1-2747-4f69-823d-f63f35ed8691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 056b55f4f890e414fa38a7de8202d15171365803fce300c86cace26fa1dd2a7c
Date: Thu, 4 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659634252
