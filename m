Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6334F7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647828385;
	h=To:Subject:From:Message-Id:Date;
	bh=Q4QFWXN8eLaStfm2Ufk0pTBSaYj7YQBFwMluBapIdIo=;
	b=aBwvXLynJr3gwtqbboMbC1LyN6pyUk6u/sRd+XpzZsD2aYfbYpFqoMf8bPy5NDgL
	EtF+TLiPVAywRF6LlHhwolwejHVA7CVCtk0Bb6zB4BxQt1Gca0Mc5M3on0bO8LXNYYK
	VAS86k2oVyoog+bpCvjBUnqD33LyWdCZicpxqkMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647828385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q4QFWXN8eLaStfm2Ufk0pTBSaYj7YQBFwMluBapIdIo=;
	b=U8jAJtux6gOvSLl7cN7PlUh6mb8RK0tKnISD64/XtkWM4+e+mjqJbgEBU8vDGwkL
	ARZVT5NJKHxqv/zTq+IegiKQriX2lwdAdlTMrqP8S1BqhpcmMGGM5/GfMCzdgZ1x4fL
	SqABvXBX+3Q6XVUeST9+iUzuNGh12st6vyt/oPGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa39bc3e-b422d144-9503-4238-a4dc-630df17b2c00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44792afd33aecc29e19e31d3a1ddca7caee3a2fe2398acd95f269a924e6c802a
Date: Mon, 21 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647828384
