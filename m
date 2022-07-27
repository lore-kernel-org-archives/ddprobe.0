Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B1FA20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658894452;
	h=To:Subject:From:Message-Id:Date;
	bh=FSXOwjbfD0qzXkhLrFDNExNRF0xyuEqZqnNkxlUyZtc=;
	b=BHFgwN2vHvoVKEBypjZmHf5+hBXdzWzf/Zc0GY+jSn8aBJwlDpf0ZPuNtl2uN1aL
	56GSlDpp2qKdv9DiWJb9IJKYutbp1qK7GOz9MlL2bfnjocLjhNQ9lVKClPMxzqx1UT2
	ta7hiZPB8WPrH3bCU5tVkLY4nc32HSrX9YJmRBDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658894452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FSXOwjbfD0qzXkhLrFDNExNRF0xyuEqZqnNkxlUyZtc=;
	b=JaLEfPnCMYlsV3VwEkaV0111Upr4NW9EvzUZNaicU2LYdiZOYmgJUXfJhnHvGevk
	GB8wnwEHkBKYhn1Xf92HhCUzt5zIHu5Y2NYMwUz761VZFXE5o/cC6T32yqwTHQjA6nP
	an3ft1hODk2TqO6tqqWxm7q7d+AAB4gerE3V2nH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823dd0879a-d7d3be91-3331-410f-8e89-48416eb1b0be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f4eae8b6a30cab9021b775f2265bf736bf0d85f8f55870ac20b7cd27cc3e43
Date: Wed, 27 Jul 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658894452
