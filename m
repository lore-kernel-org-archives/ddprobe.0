Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1090D1FA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 15:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654442579;
	h=To:Subject:From:Message-Id:Date;
	bh=okW7N/uaKopJ/FAQoEkAl/Pzvoo3tiZI/gPXemmx6Vo=;
	b=XopGK2ytCEALDwSWRAEWapNWlQzfuI1zN1CWSnwjLuQ1EXfLmRN22cqrRtYpq/K6
	jYD4ivyEWemjj0ZRNX+ckCGobJ4fBVAE+KMo394VeTU67jT2+N7CtLF0XqA1XByUEpg
	C0Bbh4Dn/tRhAKlP+kYSqrqjRY8as1/Eobp7Bpi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654442579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okW7N/uaKopJ/FAQoEkAl/Pzvoo3tiZI/gPXemmx6Vo=;
	b=KpXvzmHYApsjlXaHzuPRAOLphzREzuFFX5+6xIObDT0ccuoEV1y4+xMjvw2qyUpP
	K41MKpg+Yq7DOeWNyPvvauX8VnRi0wIONB7IcEnGc9YgBpOS/9p1ASAlBfoZw7vwoWG
	XCfKidId+/hVsyJaiV6WG0xV7xqpFXWahWUIZAkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813476550b-0eaa1264-da95-4484-9499-0bd2e633bb1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef72030a1cdb4fc922a56453289cb4599e8276c32ee23dff243635090218961f
Date: Sun, 5 Jun 2022 15:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654442579
