Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F857E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654350599;
	h=To:Subject:From:Message-Id:Date;
	bh=JFhBzLoYOrjmRjZZsjWT2+JiSNldUf04/qzYKtFDIS0=;
	b=MXbhlpB1dc0F2D4lEUqfC7MiERgWgikMy89A50pbPUrZIQ0IzcqWGGgAxDIp10GI
	Ede1f4HUFykR4eo8eJJneyBb+u4z7YEGZU4tDbODjYtGvHzuMCeui5v0jkE0+zeMjMl
	1UvPPiE/ThuZEmv9deGgAy19Pj5n1R0ksewW2dnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654350599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JFhBzLoYOrjmRjZZsjWT2+JiSNldUf04/qzYKtFDIS0=;
	b=bXto554rxFP5wu4aHEbi6dMGKwBPgAz3Un0j0HwvzMVR0AcF1R0hqsZah7DPYdnZ
	Bw64uKUYYh+Y+wqpWHn2MHh8QFOp7sydPBPJRpV4wVIivy2VLw3ux0noRhzsMuOojYh
	jgtniMTnxwL0LnfLv9TgQWa/EbaHemLecDB/yEX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812efad450-0cc00681-80cc-4d6b-9f51-faca4b2000a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0a04cb6e0dbcc50cad44d407f4380417678edf88ded89b0cb5043be1a47ee06
Date: Sat, 4 Jun 2022 13:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654350599
