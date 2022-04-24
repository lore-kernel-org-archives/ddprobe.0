Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D70160
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 00:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650759358;
	h=To:Subject:From:Message-Id:Date;
	bh=tnzXWXKv/LtOUirYnMHHBM/LBzLIeWmj2TZ0IrZ83iM=;
	b=NapABrB6DddAxak66fXZka66icCb9PNY/NYkriSCalIQxPGIu5Pqo2+SlWNVFUgc
	ghOxkTBwXCZnK9ZXRt5gn9XHUTrTLdqXdkvkwauHU3nqEI0Ll10tWHiO1b6wi/B4JWi
	vXlpWH1hMIhfbE2yFfK+8n0vFRlN8l1huLiE6SSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650759358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnzXWXKv/LtOUirYnMHHBM/LBzLIeWmj2TZ0IrZ83iM=;
	b=W+i0zxq7Jv11kcvQFV0WeZ9rq6229UBeZErVZCQOM+ZweiXiO8wPPFZOUg0G7mXc
	wzfkMV0gC6dUajnV/cALL+iIoloVemlI8rrrs4a2l7Zav7cWkhOOXtXrK5FPJMpLzOP
	GvHTV0u8hqisEcFrhN/1wvpIw9Khh5HsU7m0MWp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058ecd77e-4f3d4848-0ac3-4494-ba2c-2e554a1e5973-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e4aa14e484b754d26423617a00b96c6891cfddba7f6104a5c79ab1afc1f4bfe
Date: Sun, 24 Apr 2022 00:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650759358
