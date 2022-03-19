Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C413617E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647696384;
	h=To:Subject:From:Message-Id:Date;
	bh=2XBLDZlpXY4bMBR4vChe4lEv486PB5uYrh+Q2j13Hk0=;
	b=JcredHR+go5FjiYu0UbeG2VJAIyLeZwLzY28phPi1gFgViweuhjPAA8aO4IhnPIj
	t5Hs4aaDbSbC9SJF2N55OHi/JWztqUyH+tc/RTcmOP7vKjSDVxeDMmYwVwSaLtAcG5N
	45IuuLMHSxLikSfo3cM1kJxwS9j+H1+z0jy8qHMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647696384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XBLDZlpXY4bMBR4vChe4lEv486PB5uYrh+Q2j13Hk0=;
	b=VchmmXFzQLxvaxMwt2fddhw10TOr+UGjV365cGnkLYNOXpoP2Q82o1RiS0F/x86X
	nvJ9LlbaIC6BDhxHht8S2RZmnNqyhjvQY4bZPK6v48MQT+3849YOrxX/zpqlpAzxCTA
	TDhng3FTS8EFB9fbAt/DIy4LiH+pKawtNBrXsX7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa25b92cf-4f650fa2-f1ee-4b1e-8fd5-9f6905139045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dab8518ca02cbe326e1fc29c8496cf07a9f6e658f5fabd73644eb93ed36a0d4
Date: Sat, 19 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647696384
