Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6317F650
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659660052;
	h=To:Subject:From:Message-Id:Date;
	bh=2p1hInx2yoIygTdPsIsIeSD9pIjYWcx2kKlV7eGChZY=;
	b=JROEA+eyOEtBYHI4dZEPerQqglMZyvvS30fx/nI7SPj1lYtA0+u9NrCEnPWqN0tS
	okdB9xjCJQrsqWGS/4ofg6QpLSR/npUkk8/73c/yMUYuWe0K4Sn0lud+k6f25bWhLlh
	SUQp7w0gAAkpqXn/LUkVGvnX36mjfKnLl0R0ObvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659660052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2p1hInx2yoIygTdPsIsIeSD9pIjYWcx2kKlV7eGChZY=;
	b=IVxIDcwbfiMPFO8k68HxLXkh9Z81q4u1Q8cLwrW5wl1q0Z8dCiiidvhFLQnfWtA7
	Xn969T3Ykm2OK4VD5YaeIkOhkEs73JgDNikr17BEmbPU7xOV070VHncwaHCnaMqJ63v
	CqboBKfRJ9YM0gZ8FlPIRrF0+gF6lFoi95Ku6rKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b72a87c-e6d046fd-600b-4984-a442-6e25f77a334a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dcf6298cc199a112de67b00a62dd063f905750a267b48f8ede976eff5f121d4
Date: Fri, 5 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659660052
