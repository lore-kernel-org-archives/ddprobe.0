Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8992101
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 08:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651652158;
	h=To:Subject:From:Message-Id:Date;
	bh=WFviN24NhKtaOpaIOeYHoN5ZWkmev6ufTMjZPmQne8w=;
	b=SYKbKh99erTlSklp/TzCQZ1UYMt1m3O7lE75XE+6wsciBZeyCFVQKf1Qlkf687JO
	EFX/QYmt+6DYzRZ1H13H0DTsEAKKgT1IhkBqVQafgvlSUnbixccZHbHSYef+t3cx+l3
	1uN//NzECRiGVHGy9LQS7SSv7Cjht2cJLmlhYZDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651652158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WFviN24NhKtaOpaIOeYHoN5ZWkmev6ufTMjZPmQne8w=;
	b=a0pjPvbNiFcM+XprCgboGltcXjGrexfnvLRa/emnRNhDm2xrWTKRUaMOAPLO43+a
	AUGeHYOx69UtQmV3T8elpA3K/2F8DcUK1CgLkipmepqyruvcBiVKtj0oD6tJ7F1z3GJ
	2zyI7EjmRxTkThlN5BkiaU8poDeC10Tfu5RJ4fdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808e23e330-393ac198-b4f8-46ba-ba5e-2c4935d45322-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac4941b449d19e7ef721e772547689ac5c5861195a03511db972b1fc37ff2142
Date: Wed, 4 May 2022 08:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651652158
