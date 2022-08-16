Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0661104
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660681852;
	h=To:Subject:From:Message-Id:Date;
	bh=1A5U5fLTtUPRnslQ8zvqvKwM2nItDYJJ4zZPCYnCcrA=;
	b=CiJJi78ohkR9YDG3M0Dgt/LWBS9Rk7r3107q2/54VbwuSpaTBnU/NVHGz5/EqGQx
	u2PvS9p2joshJniwZ6dsmKPcjqnU44Pe/ATE0bD42xJOOIIWh55CljleDEVCtKfzPtu
	PPpCGpIxKO+pNbOO3yxV8pJgUlnk6YUzT33sg0SI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660681852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1A5U5fLTtUPRnslQ8zvqvKwM2nItDYJJ4zZPCYnCcrA=;
	b=Tl0Rb1edzpoVcfp8YRf3twM3pI8S2X2lFjrF7pRt8CPxPn/40Ox2VkUlOiCktC42
	4YDbb9892jpFfA4ZMG6/63in2Z4xPBIhaKeWrWKM60ouF/tOPS2Qku2nRqdVtuDYzTa
	9gmAa7efP3AqrvwJJrmwjSODgN1RkDTNyqmtDfWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a85a169b-49a97c53-e4a1-4b6e-b677-e42a906decb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7babe108ed231d38a9d1713122ba37a664cc66f97c97531b8530435c3035d6
Date: Tue, 16 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660681852
