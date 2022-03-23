Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075696AB9
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 23:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648077418;
	h=To:Subject:From:Message-Id:Date;
	bh=EXoP4nhdpIG5wBXiYrfF+VyBvWIwsqjHji2bp+dX5do=;
	b=azI2Eo9EQ2kVjhfCLZs10CU0XB6e2L5SITovRP+URnXhPpndxah7bQ/56NjsP8lS
	RTQgBRrSvOZ5nzYTle6BjLtk2/aM1qzNkvyaU5O2rEoLFsDISR1xeKi1yNeokrI8ckK
	ITprUMQYu/XCwfBVNFwuY0y1tZ7ijMjwukdnsPNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648077418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EXoP4nhdpIG5wBXiYrfF+VyBvWIwsqjHji2bp+dX5do=;
	b=NiiNYpceWMZ7aHeaJDD6lz8PRX7J+LzBNOQi1FeCU/4wHg99iX4WG1870qkOq5HG
	4sGu+KmGmUCpm3ILOOuy7k3kQk705ClWGW5jgWEYJLi6Y3ZUOtI3V3zioME7wTig562
	+m7eoncCf/AFzNaIOpD+bk30lsHSiJwKfThrbrsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb911af2c-62d2ac65-5bc6-40b9-ae79-5e30744b3f1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50cfe8cef146de3d04b49b0f1a93d1da9bc1497f8031b8b10bb5c2267ec5ce17
Date: Wed, 23 Mar 2022 23:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648077418
