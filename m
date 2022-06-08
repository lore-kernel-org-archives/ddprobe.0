Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FB87B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 16:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654705799;
	h=To:Subject:From:Message-Id:Date;
	bh=lbQxzDIxvu8QEKhlXBXcAW8ZMMRPF0vnvOah0HfLCm0=;
	b=Hf98nBzayhMZJaNbizH3/7zz7Q9D1KPbFf3YJDNRGY9AhXLIDjlxyEsUK1tbgrX4
	HxRyx6ji/6WcFKt18q/FgQZG2xUAZRnb0ZQEghlG2C+a6pizJLJmWbP9HNfuYgJ3cYZ
	ZdaMpBwfw2sl4g+E/aP2dolLNQM9Qw8IkeO4LI7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654705799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbQxzDIxvu8QEKhlXBXcAW8ZMMRPF0vnvOah0HfLCm0=;
	b=D6WMdV3EpGvdTyRyqyMXpYS7Z+LbOaLNP8ybZQJWQ4hjK6CjxBVW82S855NSCgph
	SpqngiuWRoNr5ETZ1tjHVQVNjktF7BY0B425TnRuQZQKHj7PfOa/efogWJulhYhEWTX
	o3iqu+Nu++YGdZ78csf8YpmvV0jooVyGjt/wcA4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814426c041-b4c8a43f-c0bf-4c8e-a1b6-931faf3053af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dffc9a42f55158513c52714d83422f68787dfa4eb452137854876c59806f8e21
Date: Wed, 8 Jun 2022 16:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654705799
