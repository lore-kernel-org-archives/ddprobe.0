Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E50610D
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660977652;
	h=To:Subject:From:Message-Id:Date;
	bh=5ou7N/l3sQ8W5JpdSbe/612rRuEfY+kLvnejPu9LTro=;
	b=OudaeRr/vbz/oLpO2UilrI6jsoWuIml8mZGRvP7X1hvuaHcvxktdejPWqTCVQTbt
	NaRixxmIVtbYJO36VMGqSWSbGlN9GVL01gbSOQzeOKe7KLxaEY0o0Crc4AuefCHGvSH
	5ijHuHgXiuueALNXI1OJIacsAN2GLQQwMRMN6cLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660977652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ou7N/l3sQ8W5JpdSbe/612rRuEfY+kLvnejPu9LTro=;
	b=e0OHIxhzK8ygvfRQK3nzdmLk09v2SU3Vt+GAF0cl8XPUX5E8fa7EFmqdbm1AVqJ6
	E1oPYVpZOZmkma3BDiN1ObVOmxWmR1SQcfzWCFfUuJ4aATg9cd4QOEHAKiOkHIEkNK3
	YDFUZ5NVe7RB5b7krZphv5hHL+1CAvZtnWLYulDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b9fba36d-ef15ff3c-12d8-468b-adfc-876c345c5f8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b491b9059725dd1dd78e3933f7a1dfade8e334cd926af01c40bef632290b4a7e
Date: Sat, 20 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660977652
