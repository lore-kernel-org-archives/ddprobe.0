Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FB8367
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658796412;
	h=To:Subject:From:Message-Id:Date;
	bh=C1Q4OTY7EYFuUjYukxrsNmuFLKrjW4Jg3nYPWnTsUyc=;
	b=YSeLFP+GCTUrGjRQCEtbXjtnBsBrVpQCu0O4yicl+6UAyBPpTvg3X8J3ATv5K0DG
	kUAcFScY+IlkMzDdvk9mrJM+sgO68JadxhFLnY4Y3XzaLHfra0lIuftqkQBiHdHp3O9
	UBJ+4AG+Ag6xtVtyIqaWPls2YqR//z0xHFxvgW3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658796412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C1Q4OTY7EYFuUjYukxrsNmuFLKrjW4Jg3nYPWnTsUyc=;
	b=ZYF//v2z9UZLT4M4iZqKSA81j3NWkSI+66t6yeOXvbvvR9hLx8aXmGtn8TEmAL2H
	5IIhw93JLlT8Z/KJ0GuYOfK06lHtJTv936CdqMf/1LXHKICGeuRLV6a+l5cUwoW26nQ
	e/8N+KNOGLqrtIuf8AdTNRjMq/B+co1O0NUj7HZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237f88d4e-47216308-9f36-4e8c-8838-681ef2fbd018-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d81599bdd0b5947fae8c7d0eb3e2d4c85eb3db1e5f28b4e47c4f65717ec027
Date: Tue, 26 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658796412
