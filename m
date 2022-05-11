Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806115A2
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 08:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652258399;
	h=To:Subject:From:Message-Id:Date;
	bh=L47htHCWsrhOA4Qpi566e4xQ7XilytfjovXGXFdg7sQ=;
	b=ImRzJiG0lTYCgaPrSAiLkVFICEFQ5BWNwOzaYIqf5uxIJETqxzsmo/Ryg0mNnqQf
	LbYWWnf2mbYwOtxeN+GI6dKmnfT696l2+WTDw9+99BD7aTPAXVmVcESJ1jbQ8+Ej2Dp
	MfObw84HwP9gL6rSPnT5aXye4NFDqAmdhtIojG8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652258399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L47htHCWsrhOA4Qpi566e4xQ7XilytfjovXGXFdg7sQ=;
	b=OaFcAni6b5KpcvhH2xojWsOaIZXKTi3kWB9K00H1NI/cuk+bvx4HAMYy1J+CPaLy
	2GIiWeUb7aNYR2d6nVxTnGuW3ZSQHuvjT90u3dozlixWCPv0nGwvULz2O22E3T81Bnn
	84NyFk+IX2vl2497D4BE83rUFsUZHgQAGdyeAx5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2466439-eebf536b-f995-4009-aa91-7b2e7011db7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f948897b824d955a048e975f75acfa54c58e0582113f7ed26e3ff572ee80f0d
Date: Wed, 11 May 2022 08:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652258399
