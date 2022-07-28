Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4507A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658994052;
	h=To:Subject:From:Message-Id:Date;
	bh=Mz51XeVR0z1pEtAFZrAtnh2sbHObqUkM96DmlqWdGow=;
	b=X+G369GxHg9VJ/NzPnLhV4jT694qxkkRn8MhijmW++8ipG0K1nu2WVAuov6toXd9
	LrnO+sFOpyRfMsg/FrtFdnBmRr4w9gIEADuznCQj405zCfRBGQIFhqTa1VTGUdq3ZPS
	JFnu81GQAEqxmfhUu/KD0tGX5MXPfaJKPP9/FIdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658994052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mz51XeVR0z1pEtAFZrAtnh2sbHObqUkM96DmlqWdGow=;
	b=DieRdPScj6HoP+GrcmCVrJttWaegK2YqYZy+WPka26A6EBKoYLzhg9b2G9e03/KX
	rjEOLX7KQ9r4qwkRJ90tgIsZkzycTV9mwXUDLiQEX3vIQa3JZOk7u72eU11ah52I1OR
	Jd+xurSzMbJsMpdLZoLYqAbIqyQGSlqEtiXgku2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243c04dab-fe198b58-84b6-48c6-a408-5d7d643f03d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 574f9a855e66fc2717b27e5a10579a71deb8fc7334a332ad28f3b375591dad9f
Date: Thu, 28 Jul 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658994052
