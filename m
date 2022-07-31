Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A3E161
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659249052;
	h=To:Subject:From:Message-Id:Date;
	bh=GzSEf6M1cNTMq3KY1AX7TxbMnPTbruax+Tbo/fxMO7U=;
	b=YNDFso/VGthG/2xQB0p5TXy1tEG23mfRcJT/CBv8cfhcPg3C/CJ5mVBHVAR0epP6
	nuHSr6nmFE0Bz5Y7kMqYjKppu185lUIKyHuVqrWvsnxnz7oVfKlusECJ7EjXV8jAKpO
	uIvKZpSGgDovzfjZ24SXZcQOC5/qlpe6nJM1cDq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659249052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GzSEf6M1cNTMq3KY1AX7TxbMnPTbruax+Tbo/fxMO7U=;
	b=RYINLyTOt06h4weXJzEAoOX67cZjEl9zm956Kz8z8CUQRTbQWwGZkULRCyNW4+DG
	DjmjoNO+w1oUg/u+R86X7lObk0bocWrh+Z7IlFwq2ZkG2BJd3Pfye1h2j0CGht7o+fm
	eWFE4P2A0pQGi0XMep3hKgQNOnzCJJnt/FGD5VII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252f34b8b-b9505b09-8df8-4f39-bb7a-09ad3756ef83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d5379ec3f8d64565bf3598128296428f46a1eb564f82782db8917b35a3825bf
Date: Sun, 31 Jul 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659249052
