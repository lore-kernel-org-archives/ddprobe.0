Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F0E7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648842718;
	h=To:Subject:From:Message-Id:Date;
	bh=0RVvV7MfVrYKTGLhBbishn9/hOZDGFEFw+gQ0jdTnGo=;
	b=fPE/7cyP15QiA8t4wGpJeW0eUrNwTq4MGUjZJ7L0d9vRskUMs5e4dT91/YzL8yJT
	KlrYMOO9KLsyNdGx9m6u/WIBhYdeU3dMlrxZcD82mwDaoC02IH1tx217k/JogmNKbMh
	gv/gkb41DyF4n2Lj0DtNNMYr6YV5ZHDbLsjcEo5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648842718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0RVvV7MfVrYKTGLhBbishn9/hOZDGFEFw+gQ0jdTnGo=;
	b=eXhpJzv5umt/NQeMvYsBGfX96uJSLqH+7pB/08SjDUf7trBW3E1lenKRZk0zMvEy
	UwJo1iNvCBMj0N+I0l2UbNgw9skB7fUD5YcpJS+ldCnemWCIza3ByJoT7g4UjHSMG0S
	Sj2MzTkJD9XwuUwak42FxGk8LQIVGfH6x74lwJI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6af3c50-9cb1ebf7-7f67-4d80-9e09-8b442184e205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab8a3ace4f4c29e5c5b04fa05ce8465a3eb3b6d3a937994f45de7d17e32e695b
Date: Fri, 1 Apr 2022 19:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648842718
