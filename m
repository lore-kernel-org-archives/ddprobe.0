Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DC1182
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660927252;
	h=To:Subject:From:Message-Id:Date;
	bh=KfDo8bYmqthssFoBvQbgZTe/CgoQEEa/iKeaepwnqHI=;
	b=TNQVygSPEKdPUVs5Kgb8F2xPsopNOkHAxzhuajKTgL2JQLmA0XjTsa34F0BRyOQy
	+Ay2tguYV9BBrTKVUwKV6vUYGtWQJJVTC9TYK49y+6B6vqKb6/Dd+9hxqBCnCvbtM7X
	Je4FAPD7INavtBWvwHOMf4C6HTZM33ij6bE9l3gg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660927252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KfDo8bYmqthssFoBvQbgZTe/CgoQEEa/iKeaepwnqHI=;
	b=UDHab6O36n1D/izEIZwO4a/byarkzQr8RZjumQZPIpMkcOQx7lo/gTv2Xl5oXELJ
	3XCNg3me0v3oZVR9KwakLmTm5GH46CAUhuxAgBUfiXEzBzHQ7Gjr+DDIH/SVlMtJCCe
	0aNU/+kIfClIdKA481oaq+yULSVLtmZp2RVA/UZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6fa9879-6f73fa50-ca62-44e6-bbd0-50062d775d4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02d68dcbabdb5fa5eaf3ae56fc4734273a6c906fddaeb9de66ea8bf7b909204e
Date: Fri, 19 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660927252
