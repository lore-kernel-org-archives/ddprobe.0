Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578AE7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646839584;
	h=To:Subject:From:Message-Id:Date;
	bh=VPdSfkSGtByu2I5o1mkBLcKGF+Q8Ngrzw0ZyApTj6FY=;
	b=D2XAdKMsTKawtCPDHm3MRSxMW0w3DV6t8jcmhz7slXfF3Qa8GXSP9zO6drDI7l8P
	1HI3pKkT0lLwwAWi1FzNizPwqjosncpjkM5nGtV1igMrrswQNmkxqhRHLhVcdEE4TTx
	F12H9+pIAMKQQnstBTiQI9QkpA31wVtKdBcRARb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646839584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VPdSfkSGtByu2I5o1mkBLcKGF+Q8Ngrzw0ZyApTj6FY=;
	b=Q8zQWWtkwBJb1sA8dZAZNSEsb8+tKLTVeFsnk3aiRW37fkHEdGSEI8vGT4/Dono6
	48e4hDHYijtSf4J4N3UcwGKAQGDavNJhPwA1V9ddTKQroA3cIiGXUZEQ6ZRSlxfnmbi
	gRiu0bqF0e6cCbTJxqTX4sPHgBEZSMBqzNvLaASQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6f49d7ca-051821f9-bedf-4183-8f51-aa15c8c1709d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d26af193f42cad757a7a7116e94260c1c27f7dfdf96bf3310953b44d40932a0
Date: Wed, 9 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646839584
