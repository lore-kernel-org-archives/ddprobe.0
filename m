Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974F03C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658174813;
	h=To:Subject:From:Message-Id:Date;
	bh=BCXMrELZj2n15x4YYhsAAAUTsF530OwUa5IwDL6WteA=;
	b=PmG5nsRkkMsfJDA0G0rUeSqGcwNTfQJ6uByp9m2IknzvYudUaKybfnnCxlr0FA11
	plXt1Fr5epcaVpdF84T5TcZGZ39Ub6Fj9PNfrRPnJzRFXsPTWXDeKuaBoXwWmsHXROq
	xSbNohQHVUKxttnrX++W9Cp1pMSjTdfQ7d3nPcEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658174813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCXMrELZj2n15x4YYhsAAAUTsF530OwUa5IwDL6WteA=;
	b=YXZ6XpN0VDkGIYLwb+uqJZgixTLgeUg8WB9TVvuDXyQksOPjiEhPPF+fq5hiyjGr
	bYOZ5+UZSNVcLxL9uWoR3cKp55pOn2e3oRQqf0G6tdmYCjvXgYVB7SFNtDBMpJETvc7
	ZJt6/0nRO3WdHMmE99Buxzxl9k+NrCM/EzPoXuqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212ebb07f-7a0f0b7b-fdcd-40c6-90d2-d510b5d7fff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c47c4d7cff99c3829db3f9b0604894f191b49ab867d656c1e46b0db17da99d6c
Date: Mon, 18 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658174812
