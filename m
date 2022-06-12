Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62223A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 03:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655004239;
	h=To:Subject:From:Message-Id:Date;
	bh=kesuPlg5LxRf6G7qCqDxxlsLQ0ViI9gopmUV0vkhNoU=;
	b=PJDtTK1nYq/SuQ5raN1UPmOSayqJwjGjNFQsUlCloJglj0fwK9pKn0z7Jrx+G412
	ofdhaamDP4xDDpgyfxegKdOwXpHyL03cfpZoe04LIzp4kgef53fnGEhTzfTexMAi6Kg
	AThV/ro5nXfqjdpCM08Kn2krEWGKHsXjn5m4tuYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655004239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kesuPlg5LxRf6G7qCqDxxlsLQ0ViI9gopmUV0vkhNoU=;
	b=YowUG7/K1j2YaR2qoETqG2u5PJcWj1BWIH6k0EZG2IhqIYifbbggIykDRH1005dz
	NMJ+ZfItYBeeFpdI/dTnWuIEqpkr/eiJZlvwZN090cJy9tAZeqNnRvV6CL2qPlGEHL+
	Xf+xPjipdyzKKcmI7V34I4+LXu/1iMfJwsxeQK/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155f095d3-47e8164e-095e-498b-802f-432505901966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4810944f3fc7c024c1fd8b57907320a9872fb91e4fe8ab83b9015d9c3eb9bb8a
Date: Sun, 12 Jun 2022 03:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655004239
