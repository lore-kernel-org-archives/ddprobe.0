Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1AD4685
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660072852;
	h=To:Subject:From:Message-Id:Date;
	bh=Wv+kyARVqO/Uexyl9Oeqvaw9YEvwSayu2C7cDS/QAro=;
	b=Rklu81+yBeBvyH9KkHXUb/2vrwqw42lkeC7ZIlN6jecRpuEXcQ4J8HvRD35MleEC
	x0CnlzzLLHDz0ig8HDZC8n31KwdaEwv3m3ayUz9PmQ7KzQbOolrdrhkU5rZsDwyBCVc
	p4h7sroYoMNu4p7Jmi8j9SzV+jEe0RF+dNFtpt+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660072852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wv+kyARVqO/Uexyl9Oeqvaw9YEvwSayu2C7cDS/QAro=;
	b=bI2CEgt+YnOVefsQMTqnPWkElgIQ98EWirL/hOjBrfbdHyoWtHg/acnKS37vAZL4
	3hZdSGKg0KfZ015a6/mw/de5rvTjV6JHUv743l8L3Wm4BcZXBhY/JRlz+ts3Wf/rNdD
	HN7fV1KmNfvfV6RU8ejEbZeZeTgMP9IMt8LweK6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182840d7caa-5f37a09c-202f-4071-beaa-757d78296bfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 665ed64b9281b5da73e807c22a97a6bca41dd81b8721632be369985ce279ce73
Date: Tue, 9 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660072852
