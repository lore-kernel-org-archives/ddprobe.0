Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FE2A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 00:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649551978;
	h=To:Subject:From:Message-Id:Date;
	bh=ezK9L9wT0hNrKV0ebQxjrtwc9Hkyyli4xMKR8qHmcEE=;
	b=aUG1Ip3Lekk6kV3o59KeKBnvZ+3CLmIzpNBh10OUhsTklF/d0vH+yj9fcWTUYC4/
	qHRSjVPWU44mL89p9taT4K1AY4N9BvfRg7Fx3CHgyYnbTYKnX3yL/yt2Hm2u1or2iwS
	TB/SmEx/aKRaLuki/o8vUbCqQXO7R4A+4fCQB2mI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649551978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ezK9L9wT0hNrKV0ebQxjrtwc9Hkyyli4xMKR8qHmcEE=;
	b=FdREn6UXaxfG8nWt/BWMYir0nVB00klwszjd6FmaDyzW1wZzdyFqbj7OWF1lss41
	J16vGVsrKMVWUUBTA/M+137getIwkKVo+WUwVA/doyQqtggBjeXmmRfZVKwsOh2/tma
	RL4dKEbR8p1CFTLllUWOnthbRftwr2WhcMoshEEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010f5af31-12dc8ae9-de64-49ed-a8ba-c4145e680267-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a57dbb82bd7012b935aed26f524d1f2f70fa813b943fbc0a62fa8c45b346437d
Date: Sun, 10 Apr 2022 00:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649551978
