Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F7D7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648501318;
	h=To:Subject:From:Message-Id:Date;
	bh=RItEEjdChBHrhxYt5O8frLa3SICwPOfwNPV6Nx74AcA=;
	b=Y9wznitoMkseHrT+7lx4sqFCIMrRy0ihlyIQB0HcrnpkLR/r9IsMi5DMFtK5OFQS
	rE4dPgdnHpFSVqWUV/v/cS6wu8gI0Q5PEhsAF1Nqorw/N/94Hv00j5xDpt19Z4ZnWQ9
	FfzAdw0tp8VFUqXtxAI8gWqsbrR1XbAebUKiUJfI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648501318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RItEEjdChBHrhxYt5O8frLa3SICwPOfwNPV6Nx74AcA=;
	b=KDwSpHeP/on1nv2KelKVwcWzrP08GlHlfVbrdGWnGxzUfxf5m3KZeiDD35gEdIVq
	UrviJCUKA1SlCB0yVCQiAXW6DHPZPsdbAqcOOcZIcVbQd5NE4Rw5IYg2Xi1cZoE5jhz
	Tt+S4Uxf4b2ZTWmpmTyjUxxE3QoK1rBW4wQu0y9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd255e263-8b47a14f-ac92-445f-92d9-f6b401817fff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 288ab03c51b98438ec6c5220fb9607b36fd127cd38af03aeb4105773a2f29f3a
Date: Mon, 28 Mar 2022 21:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648501318
