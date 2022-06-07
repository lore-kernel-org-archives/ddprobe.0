Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9967F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654604579;
	h=To:Subject:From:Message-Id:Date;
	bh=vxOuaVo8MWyXjJZebvxnR8IwxBGxn6sKqvmkRWqXTLM=;
	b=Amw+yaHVyE69oDF8n9Yb8hfU9Oi8pu1yFLodcFNZbe7si6QBolm8FOY5hkfE0nKf
	ICJvPRDztI4ucoHy1MFB90ld9rAJj7fbuTxOEImVeEoO+SnpER2mu65QV+a+ASllBMU
	wyxKK9igJ3vc7N/7yOW1dLopUGUIr0S6VuwIBjcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654604579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vxOuaVo8MWyXjJZebvxnR8IwxBGxn6sKqvmkRWqXTLM=;
	b=Krym7pJXS9UH5gEOCW9oooEd1J4ogP+b4vCqM5ehHiqF0HBvspLotLxKkZ6Ue1ax
	VNMLP+c7hcH9KMpIUt376RyYtUDYYuos+sLJjZZGS+IgAhhClscAMqNaVkQWoMJLNr3
	+UgJWLym2C9MgDMYGGNHpSNT9608O09T/8wOeWy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e1e41e3-79c6f876-7fb4-4a82-bf01-2ff3a0d9e2a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45d35d88505b47786ec3a0790cfb8712325ec9ec50155c1bb5fc0027265e77bc
Date: Tue, 7 Jun 2022 12:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654604579
