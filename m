Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B137B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 21:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653859199;
	h=To:Subject:From:Message-Id:Date;
	bh=64ie5W8Z4lECaU5HQEcp+GMfijwjWUrpC0KFNaySYyc=;
	b=jYEpwGRqolfb2mjSHuFKrbSPNbV7fBQAF4r5A2wWkp00kuAGKLDuwUvjOuus9PvE
	ep6PaFi7mt+SmDk0+sAaM265sLqdkksX9Jszl8juvXPctrIInJ5jhleEtSkmGX+e37C
	aTGGUs47uvMvlAbsdYRtnD3wKai3blvHqodQohnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653859199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=64ie5W8Z4lECaU5HQEcp+GMfijwjWUrpC0KFNaySYyc=;
	b=g238KjgNSROPnnsZ5KpjQzxlIuLjItifvUUfksA+0RsUAwH8O3+CG12lvTuM2Y8q
	uaMZohlgah6O5riWYLZsaJoqa7z6xDcr2xloxjYG6ipjNP+JoKI775mgXJ7c7B/0H0W
	1FYTf1V1BgwnxEWl12/LEehQXnd48ugqzHWyrcTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111b0a980-c4d0ce6f-0090-439f-a4fe-53234096c344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 722469138dbb352ddc280ba07cc5b01c192b62cc1176deec01487888ddab54f3
Date: Sun, 29 May 2022 21:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653859199
