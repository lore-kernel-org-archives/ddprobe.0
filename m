Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059C17B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651070638;
	h=To:Subject:From:Message-Id:Date;
	bh=Wh6suOkfkYRSnV6K29bmtLHiNiV4rJts1IPMynPgNs4=;
	b=PC1ATYdRyZ00H2AfyDkeXpbWLvr18njHbozicIbIt//aZSw5IWsflCbuoin9OZ1n
	0fvmvo4Szm7R9uA2ORRBmvoe/Ec6RCxQfaBVwMMJYXHupRVtubvUDPMYdky9I104mhl
	r6SPdl7oA5ttLG2b1SjL1cxsUfRFHgtWgEeBIKeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651070638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wh6suOkfkYRSnV6K29bmtLHiNiV4rJts1IPMynPgNs4=;
	b=NSOD6Qzne0psvOqT/7MAGIA7ZaOoaVwuUmMhs2ZxPL0+izmxlenMgWnx8991Dnku
	OiHiR8BpfstVc0WbpWXNcyWKBOO7hu73bQzC4eks6JvOKqpNSVAyYagh+jyjdZ+RuET
	aCYhVSO3A8I6i7OQivhjsIFtB+yhC5M2uXZ3YMmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b7a98e0-e51f869c-ea06-4a75-a7f9-cb856d0fe6ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f5e45ecf001e472f7b6fe0ad229a4fef085dbb2536a1bbccf403f7fd2e685fb
Date: Wed, 27 Apr 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651070638
