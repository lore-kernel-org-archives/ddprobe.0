Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0CA15AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647567085;
	h=To:Subject:From:Message-Id:Date;
	bh=FxTmIYPk+BFjCMu0l+jGVeMMdwOiGOv8uRjgg1cdMJ0=;
	b=JJJbaqmiwjxs8dVL7x5x/Y2nCY38IWjg7IMZhDowJ7H9ZK/I/fx9WuA+6oeylj13
	CYk3K1UH/MeJxeKok5ynE5YLG9bIIzoMxrIMkBeyE9xmvJp+v0AXAbRlB2HNtPOsD7P
	Ne6rSWO35rFy6MqoAYPhf6mbIJ4/7LHymZtajJkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647567085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxTmIYPk+BFjCMu0l+jGVeMMdwOiGOv8uRjgg1cdMJ0=;
	b=f/6qe3MukaUSF2Dolp/U9zpi8DjdtiXMEX4wlku1bZbRkswjZGFYEJXifn2jyTld
	YAhniTvtjO7JdtEFL5LpQ8gzdt5EmdsgbuN9nqAsd1gobFRxHeHPWMDz4zktp4j+1PA
	kHTSAiSGVURGq4xdIuW6JTTgc4/CAbq+PWmbYgRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9aa69d02-17a3d623-a9ab-437b-81af-9eeb6c3f17a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d73c3ba1df8a1b880c33291110d65c486d67775458e1b510a9c16828f055939
Date: Fri, 18 Mar 2022 01:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647567084
