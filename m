Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1E3203
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 19:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653246599;
	h=To:Subject:From:Message-Id:Date;
	bh=szVIyYJLalcOz9H9w8NDu0ASrdYvKJMXAREp03RL+U8=;
	b=Af/wAe4v2rVpWO/3x01R9bor6ATNU9NXN5tQNQ09kD7Ftpx4IJP9LaS7Nb6kjs9V
	U8ifb7ALnUveZJsx7iGR24wkey/nMWJ1VhnXA2YgRAo5Az9FljjARSynPf/NX2eBLoK
	J309ruiXygMOPAZB6//BU2IhN0DdLTZFfuHMBUfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653246599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=szVIyYJLalcOz9H9w8NDu0ASrdYvKJMXAREp03RL+U8=;
	b=BXC8HOzq9t2nckCFM73KpA9RyPAktsHEUkrmpVZCu6cefZHi/9UTXKlpjFbI51a9
	+TY4gB8vlbETLpD17H6yqzJwxjCA5FeRCB2kOuoX/FYIR44GNePSO5db1/vSvztbW2x
	p2d8L0G7cnIY2t8SXQiJ39/X6sQ8hBeLNa3PH0ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed2d206b-88e9a3a0-c438-4303-b141-bc6d2c12e118-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b99f384f99642e395fc99ec7137be6750c041d66cd1121f28fd9ae01b6ca56d
Date: Sun, 22 May 2022 19:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653246599
