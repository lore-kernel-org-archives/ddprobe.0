Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1117D7A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 20:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652473139;
	h=To:Subject:From:Message-Id:Date;
	bh=211uZsepxhGn+utCfidzosEoKLIECENsJLIC49mDVnk=;
	b=CrYi5LB+ahEH65knHrOJZw//x+SODjn888EY56VVReQcPmFoye7oPzKBwNJplvcp
	YkwrPnZ6o5B8lhW1QGoxJ8LVjj6VP81lQkAo0pUjwSa+3sX5/JTpmggc+qVzZQ4X/be
	xMUNriQkzL+R6QW0Yo9VhtNL43xiq4rUOsd1sbZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652473139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=211uZsepxhGn+utCfidzosEoKLIECENsJLIC49mDVnk=;
	b=W1KNgrpX+10yixFGgqWEvbBVEI2huaIGJPgecRLCe/VrEWf1obQ8XsaLQYUEPmYr
	aYeula7emblI6Albd9H7UKCrS4sEnSerhku2szrMtiKBw+wQLlmuEpuKFs4a4HpBwrX
	TMVVJu4N3a3zr4vvXAaZdmBn8wF6EqsCKo/wPvyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bf13106d-3487a416-66e8-467e-96eb-275a8d1f9623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 002a2f0926ee0445e6374595074422a503ff63fd206ea6879af905f1782c90cf
Date: Fri, 13 May 2022 20:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652473139
