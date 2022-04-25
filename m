Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96437A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650876299;
	h=To:Subject:From:Message-Id:Date;
	bh=OX+8qJKFX+pGlpiX8aie9hbv/Uz9sQGlwU4K1vwxmow=;
	b=ZnLrfR0yNPT21Bbq6fS2TzsMhMUg8nfGV/Qu5NCyfUgrx+UXzGSM81gxgHLRchq/
	IbezbQu4JBc/4ApfU8YLYVBdmTETIkwRkKo+WhtXt/nZEkh5n1U1NJHzP8hld/3hq6P
	psmBOyozaSS506x/qXLbaCiLV2VKgkIWEciObUIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650876299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OX+8qJKFX+pGlpiX8aie9hbv/Uz9sQGlwU4K1vwxmow=;
	b=Qp//e/Z6hyboChkk9ZWuMS27BwYsKA5aQC0Hqxjlxafppks9KYvIZavjLrQU01NT
	4P555TUrCSBGkjYKFJ2TjZOU+OnkWaU5tsG7patmWoNzDdavqRxHLGfhvL8Ja+JajfU
	pZHxzBhB5UfzgHLwt7z21dNPxAtPfifwIji04I7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805fe5345d-15ce87c7-8803-454c-820d-d339d4a257a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccea014b9c284af560fa66a539746a0f1db51086dd2d21a501589d3c6e59b121
Date: Mon, 25 Apr 2022 08:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650876298
