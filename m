Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E10F2F39
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657047412;
	h=To:Subject:From:Message-Id:Date;
	bh=VXApkKQ8Z/UG5llRapQr+JqTOAH8rYkAJPPWDjuC6pc=;
	b=JHXdsHft7KGEmlY/iM6AWPS0oRbFcTb3YSG4O+JKJuqM7S6wCgQm75nbV1DiMN6/
	Ld+4ooTLbc+hO1LNr7n0qPawt+iX2mP+FRHIKTsGYvEQzJdx0I7YgTOTGahKg1VDbOJ
	GsDTCfMZpwnJtv1c3xhpfZfbHU5/eS8/fYhfaFf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657047412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VXApkKQ8Z/UG5llRapQr+JqTOAH8rYkAJPPWDjuC6pc=;
	b=c5RCKRTPpfzp4CHdQOHvqGJSsaccT9s6nmCVrynLp7wwnNXMl13ArivR+ZJ5QP9u
	sK2PI4xWqprf5TJ0gm4Owtk/UFUs5EX2SyFHij2OHlH1wbQyWZtjin5ukAlbI4UyWJ4
	gD3waznZIQ/xp58ZQIemq5vMHHNZJTGeKaJGKFZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfb8ee25-bc6db767-9677-4347-a502-e8264c398ea3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20be4f552d809c5198b47647536bbb99640fda763d1c3a24d4613a5c50c3a58a
Date: Tue, 5 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657047412
