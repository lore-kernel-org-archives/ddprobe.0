Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B801FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656787012;
	h=To:Subject:From:Message-Id:Date;
	bh=nkAYhXqCIqNgtRgiRl0D2MqVmCO+2CyuKlrFDE0tw9M=;
	b=jYPREPeRej4eI8RVwueaWB8PWDscmiimFyMwI0PtkW/xUlLcw3fKezy+OVHhmZux
	phS6yLEiJq70Q2o7q8g1MzA0o3Bxhz/6a4guDTAFJWEQOqCg/ZY+B1kPIEHixZSiZNY
	1hLe4SXJtd3SUjsFGWIzp4lGm8JbGqSNGVKlmrgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656787012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nkAYhXqCIqNgtRgiRl0D2MqVmCO+2CyuKlrFDE0tw9M=;
	b=RkBBrL+VVr7+flDjM8em3TYm1ZMG2niwAkoN+45O1R2ILRGkHEKsp7JoFw0ZjKpZ
	I4by/ivxo3EE+zZCzRu81kEzAoCKrBQss3UxXBk6G3dzDNadAKj0Q+c+GWbu1xiq2w6
	T6hr0imMRY4T/8HBIXC3JNTmFUTx/pHkSFvlFDfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0338acf-bfb8ecfa-5353-4d30-b1f1-caa90cb103d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a56f9d7a9e7610be98749b8a96eb07f18ece1059e2e6e509a796f1735be6c03
Date: Sat, 2 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656787012
