Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A41F7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 17:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650819718;
	h=To:Subject:From:Message-Id:Date;
	bh=+hG7HsGZ4pGCNul1Ee4kHmREdHoYYZzws2iPw2IEF8k=;
	b=LnjzqljrvTShOFkjX5kImnZv1Uu0XXRij/c58iTC3e+avrBsmljasY9Zau5SySsz
	ip5Mhh34MOn5MUJaZLiD8vDG2keDw8R4GC1FBEmJMfZjhGt4LhNtUMMQSw4ENIRgZf0
	xfXYnmlyDw3/CSH0JcL9fxQ9+0IWAJ5BKloGtyBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650819718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hG7HsGZ4pGCNul1Ee4kHmREdHoYYZzws2iPw2IEF8k=;
	b=aL85Ye3ZRIQA3Qt09OVwo/Rg/3z5DTYpYPAQVAPGeZ7lGcb4XMiyyyUO4HPkUOpG
	OqPeEcImjveG5mvO80G5tgw6f2dLkSqzolyQD86FBIq7U95lU8SXabNwXVT/8Pea5/Q
	T7EaoCpFnWgJyva5964EboMF4QEeDzbjgMWo49YY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c85dc7d-90275dda-719e-432f-9238-f13e91a887da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90cd61cee2006fe66a0c7f25f82a505d7ff2332b6897f0bad05361964f611af7
Date: Sun, 24 Apr 2022 17:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650819718
