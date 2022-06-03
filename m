Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58077E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 06:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654237199;
	h=To:Subject:From:Message-Id:Date;
	bh=UpTdWbY2IB+fizo1iNdprdDXPi7S0pAbkU9JYWE8Eg4=;
	b=KxYsOMPPT9FLfb17zfDkLr4qs8lsAbvajog4QDlHtY+Di6phKr02HLRi3ivv5fWH
	ttiEMPJGB+rcIlAXxlHCOhV4ZgVsscr2LND/dtKECzrjqLGkGcutn8qpnCcLsIg5T2a
	N9m4GLl5dZNUbe8UbZdmptSOIyppvBfuwnzM5g2A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654237199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UpTdWbY2IB+fizo1iNdprdDXPi7S0pAbkU9JYWE8Eg4=;
	b=UQV89Agv3gjiBUgPKlMVOWdWukQF73eqUp1ybhom8eL0z1PGmD58WXQz3iaq3DE4
	4jEoSuMu7K4zsj/l2Yl9pweT35p5FNPsqa+VdA4t4rMzTyEr/NkX/ITotdiHAUZ7TYb
	sKmZ9vDB2FSz2eGt5tYY1VERJnFeZ53Bm0pwncuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128387bb6-28201e30-ce55-476c-af0b-3a3139fa64a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d022f41b384c74eeabaa40956773814f295ee9d952bbd7b1e3a1d70259fb67e
Date: Fri, 3 Jun 2022 06:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654237199
