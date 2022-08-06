Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A317C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659755452;
	h=To:Subject:From:Message-Id:Date;
	bh=0qBWY4m9ucG2h/xO7z5ocDjm/LgOxW0AuinDG0wM2ZA=;
	b=U4b9MCf2+YF8Kgo3lrHF3814xzaK8g1lqawuJhnoB0G3yD01zyfPdb1C8D7vQWix
	9/Vds3QhtNXjMLQbsRBUETWkIPsxNja7ITM4jqRJnVv2knVFQ4BqZTFRIllFadpIJJi
	XyRnY/UOL9NGUt9gKLYAsnwDfY8q5HuL8d3r4yws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659755452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qBWY4m9ucG2h/xO7z5ocDjm/LgOxW0AuinDG0wM2ZA=;
	b=RjHJ4IXsxjFlX4Eomkh1a60ZkY4NJRotTN0b7kp8j8FAAOYBLte2jA+YkkjX2AiR
	z7uud8I/b4ykxRrIN4uiecRsbHFqXQmC9qPfYcioM7Ub0N1e/sVUDHWJ1DNBDidU8nX
	P3Wr7Ku1fY0IJve2AfncPf+5xpHMvhWRqDxoL41Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182712258ec-288f3190-e41a-4e55-86f1-0a8fbbe7fb71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 561d1da1374e24f2d4538a213a0174670a016581acc6c0c07507ac2a8833a582
Date: Sat, 6 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659755452
