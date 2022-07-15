Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3881A4C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657913812;
	h=To:Subject:From:Message-Id:Date;
	bh=xDB4eptWAh2Gq1jeR53EdUI5HbQEPgr7TleySKEiYR8=;
	b=JiczHNGAc7vv7Z1HIa5sGagIQp1Dg929wphkM1+ICBuwRnNrve+Xhpednb5PeLCH
	3MDcm7OWQM6jlI8s7liZbMel5OUROP8T0El2Myco+zGsetUmez+SE7j1fOQ6zDWLmFD
	OiWpFganSY4SoL9iA//wLoYiSmGuaj3HIvN5WtA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657913812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xDB4eptWAh2Gq1jeR53EdUI5HbQEPgr7TleySKEiYR8=;
	b=bvpAmSmG+koZDcEFwaai/vhN5T/UImsG8pnywjMX19i3lF+4nmfs0ASWTomI6F5f
	JGqyIF6Nd5cq8KpkzB4SRMiAb8J8dhRbamPhC+f2OXpdzFiB/S1IK5pEamL57ylRlPL
	Z7Jx6eln3AXNboRxNE8wBMpPD8j+Ay20G8LMJFMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182035d257c-da4df10a-ca10-4852-ae32-ecc4ed5fe104-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4de6e1259892313fdd749ff7db6c6d3c57d4035c3ff2ced05fa3987812832bb7
Date: Fri, 15 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657913812
