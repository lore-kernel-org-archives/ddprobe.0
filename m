Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FEB5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647635185;
	h=To:Subject:From:Message-Id:Date;
	bh=ajgTapb0xF+pCvVyT5+I6a8u3p5zlHLvf1h96L+sJ+A=;
	b=NRbzg/D0SqrQk4m0aLjC39y/Rto3OYGi0LBrqfksLojatlo4Km6fO9k/HOhRmoW1
	OOjh/UWr41XgqXeIpUNNhzEIaj0iJQcoYAXrIy9EqlSUUplV1lPy9dEImV2gLah5LNl
	LlNUH37gSHJ/ZIWMlsOgH1Rqzu6LWNTPvWwz/PzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647635185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ajgTapb0xF+pCvVyT5+I6a8u3p5zlHLvf1h96L+sJ+A=;
	b=Wj82Zw2tW3obogAQf1Vsq7NkGuTCEB8K26bjnN7E3icNLuSl9bwCwE/SDFrPJPgk
	XY5wv5YQs9mN1xQRsZsnG+UqTQ3WUVXB+gPAn69aP0obknbDKOujMrJAL4DQgujaioz
	sKaeydCUhVtM1azNPc9wd9YdfTIhKfe7FUMtLwE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9eb5bc6e-2f51496c-3286-4c86-a8c1-c9dee2809c16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a03bfe6030e03a91e2ddd3ba53c1334e81d30feb9275b55a4037441f8d90f4cd
Date: Fri, 18 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647635184
