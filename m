Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A95A47
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 05:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653455459;
	h=To:Subject:From:Message-Id:Date;
	bh=JD6SR8ZuRwtQPSEfvEi37rweoSC+PuJ1bY+MAtzZd6g=;
	b=DDoaa6bzY+pVLFRP9lwUZx+hSgy4mIHVIkEn25ldvaMsi2P9RVW5qxmpgnUo8kO2
	4PxAXnpTSRxE2+CdlAPButV1dVV+Sxodf4WnwGu0NNXwQTlkG0ca9VbN5xYWwjAiPoD
	ynyjvY5+M421+cM9avUlFL2tL23ouOyWuUxwpAPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653455459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JD6SR8ZuRwtQPSEfvEi37rweoSC+PuJ1bY+MAtzZd6g=;
	b=XhxzfmoJU1OOY7a7UdNVbg2sg/u8a2qaJG/lo0eBR/nWRNFm4z6SnR76ZNHXIPE9
	o7VJe7C2pEfSpNRIXmo9OmhB1mTdu65wvGL7NjGFjHQgGf3irj0bU70YsM0VZM9B2i7
	j/f6Z31sTYfJE0bZp6hTe4fmOpxN34C/JXgc5rK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9a013c7-84ffc88d-8e95-47d8-9f81-9bd059a93b3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25a2d3e5b564682db59ff581d09d7b916cc276c9b4c6f853ad42f382401e49ac
Date: Wed, 25 May 2022 05:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653455459
