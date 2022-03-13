Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBAD627
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647153684;
	h=To:Subject:From:Message-Id:Date;
	bh=ukwk6TnKV0ZVlhzfA36owQgcjoQX0BCiXJ1J4GLTu2A=;
	b=J78f1x/jOpUnMSQG6mvsUfzcnG8xK6e7o3s0dEJU3VZrbZcHsh9eR81Jy7nACxpe
	teFcMwt9x2Ouzc6kez1nCak5O46z+xrJmEUBuEUv3IF4o3IJFV3EFaZunu4Dw8XLUKF
	1rL0nIjfFlookg2UeUHsJhIZqJDJbe2s5zaqNyok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647153684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ukwk6TnKV0ZVlhzfA36owQgcjoQX0BCiXJ1J4GLTu2A=;
	b=jLLB2mCy7B9U+UxMQ2sqF7y8NHf35HANd3nLOm4BQ2UpKyArrGwo8CVnRwS4ED41
	24HWgSqi1GYDt4Rl0Ig+bIzirwujQjDxBdq8UKnu48vmv9PCZR79ZbRhFAteXMD/Wte
	0F555N8o7YkX2YAnpqpFwQ11nhJlm4vMKSTSMz7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8202a107-b640859b-fc84-4a04-b06c-95327fa039a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92026cb139ae0614f8cbb1d2f1b2163d9585b39700b8fcf0ad93d72a770df44f
Date: Sun, 13 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647153684
