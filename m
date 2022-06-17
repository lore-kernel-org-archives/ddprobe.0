Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104F47F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 02:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655433599;
	h=To:Subject:From:Message-Id:Date;
	bh=IYbheucsTcAUJ5EVvARPVHYMp6QzWV6MT0iREaeD4hk=;
	b=lcIokJJPH9bsMennZANe7OsXZJCNoEC/Cnh09nRRmasKz68mV869i/HWDEAU9Lhn
	p/PcX0VHmIocCAM/ZZVLEt6NLabeySlv5FpsEYOySg4p0vX/SGsL2GtYH9C/lXxogQW
	FPXiOhBIh6S+UY6uvNLphr1s/goHMl12A98g7SME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655433599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYbheucsTcAUJ5EVvARPVHYMp6QzWV6MT0iREaeD4hk=;
	b=LpQStFqhdmlJqJl2zhAs/sWhnsRLV7EHw46pJ+K/W7U5yERHcbf0VM07WPfhJcTJ
	8ppOTUVotE2QMTkMhfr5NZzWTpRtDGEN5i/EFOWe9cgCewfuc223wkXUMnT2CMKXrKa
	bXrv9nSyZfK3k9ZICov9GZpSDgRFGwaLYaAiIhaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f881965-352a22c1-0a5f-48a9-acd3-f7bc031f7be9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f1204b1c936b2d0257c652ad82f28c316a85d2d4a3a7a8b7f1711064ec872db
Date: Fri, 17 Jun 2022 02:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655433599
