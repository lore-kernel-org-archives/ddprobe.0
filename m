Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429D67460
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 00:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657843612;
	h=To:Subject:From:Message-Id:Date;
	bh=mdJcDna5PmYJsHF8C3jnvJCcy6G2rBmUtvkhBuSPyZs=;
	b=dAX2AEcZWyJrKBuZ2Nbwkt8V4ylJLYisNYFYLiUhKUYCWys9u/uhFXvat8wOmxth
	A3wpgC21XkH0QUV8FUuEon2VqEffgudK3x0jWw+fUCMleZgJ4MTioRwSdW7+eMyVm01
	LeGVGPiszV9LQ76/INxzHELKI6QaQBfBLmlNsRXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657843612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdJcDna5PmYJsHF8C3jnvJCcy6G2rBmUtvkhBuSPyZs=;
	b=gyqqyMFtiDkBuYr3Wb2sGnkWKL287MNMQH/68slCAGxqXWhWYjLngXHOMIxJs3bF
	y5g1HVUD1SUTLCDq7GminTMPtXy3pq5HioAmqp4MVBNx1+RHxl+5KbuR+Gi6iCep/hd
	759qedo9YEuCnCcN5qgcfKXtJq5gO4EjnsqEiOTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff2dfa9b-ae1e28dd-d339-4894-9b74-051b452f727b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da375250a8e083bccaee4411eb4a4376591651f8da307c538a1ffa7b90ea680e
Date: Fri, 15 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657843612
