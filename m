Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84F17F4
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 09:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653383039;
	h=To:Subject:From:Message-Id:Date;
	bh=I5ULH4N6ZCnbs32GLay62vsadaOobs+Dm2OUV1tA87A=;
	b=KU++XhhNLrQ6wRhDszspE4SBk1n+gHsC6oTJDe22dUlzxmPeqm2aXPnGOwcoIbwo
	ueCAEQlG9P7/hoGpKia/milliTOdoyqGAOPSBXyk/2SL6a5aN1JGk3c0heUgQI/82cb
	oSdj2wlcI27wMPf7b3gkC3y243skkp4HNrgpweXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653383039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5ULH4N6ZCnbs32GLay62vsadaOobs+Dm2OUV1tA87A=;
	b=kIAkrfkZSynJc+UzlIzLcU2ekJlMwQWmKcKrcmw0kxdB7C4rRrwoiNIxq7vAE8lb
	69+ctuJ8KCUzRB6nDEKw5kLOfpSdSM5pE57nXfs+B+cD96R0RrzJX+xr+rTNYb3e51z
	hg+zqB41X2Gh5C9pgh/6TmCE2REg+86nS0I7McWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f54f092d-56230820-aa4d-4059-b667-47b2a298f994-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373acf491f116d7e6381bbfca811d6fc2ffd54340b766e1fa3f3d89ba981ad9c
Date: Tue, 24 May 2022 09:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653383039
