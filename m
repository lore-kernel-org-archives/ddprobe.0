Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5727E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 06:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654152179;
	h=To:Subject:From:Message-Id:Date;
	bh=zS4Ixf4TU+VCKVR2ju1C9pF1nh3S2jDksWoo9yVFL+Q=;
	b=hyrYBMc0OPHi9Ev11VuwEa62HpQcuwbVGeKLlemJJDD/0GkdFz1+iwJDZsg5lfEH
	KAIkIHekKhcH5krkZ4jOtwQTkwnJ4cXSNeMSvL/Fo+K7KfkXp5dNdLUP6NsDKOjQhmP
	3WriTyaMlMRFCNmUF4iLhl+FmSOU7+LOs7vB2c4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654152179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zS4Ixf4TU+VCKVR2ju1C9pF1nh3S2jDksWoo9yVFL+Q=;
	b=hlecBygoQXUJufDa3U7IP50uzXUyL1H7buUMsMZn8UysEt01S77YArEb+o9aoM7Y
	f/pZan99P1l66e5GLU46tyi/JRPztc2kE+2wE5yd8ri0kz9iNSidMfv0m6fPEUFXXHp
	zNuCpcqjGE2zNX+f04oPpCIYWyY9p2xp7/NB9HXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123272e47-7776f284-957e-44a6-bcde-9f157b18c25f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 533a2476096aa019998098fbf2b866f0d757b3daad840dfc3468d7ac0eb8c253
Date: Thu, 2 Jun 2022 06:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654152179
