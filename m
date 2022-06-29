Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE487B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656544012;
	h=To:Subject:From:Message-Id:Date;
	bh=TdT46VvIVRPIPJmvNy1OfSjGl953IzbBhuI8ts60ehQ=;
	b=J3wIyIE0dFuxTnogwLtAfBb44fwkioN2pFSqmaJB7Lu6oSbEML1A4Pm0sSReV5kL
	lMKWMvjvqWdPq/LT+ArufeCdaeJo8fA0e6VoV4wTdrySA92qRGHHTVGENFxQo0tS2qL
	SEMthw40jJfFTbJsKIReBIau2f+KmFYynq6D/C1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656544012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TdT46VvIVRPIPJmvNy1OfSjGl953IzbBhuI8ts60ehQ=;
	b=Izw4MgkG/ylrtqaqHyRX91vP06PHWHoRSriZV2ZC+cHOo53gp4/q4qRwoq4llF4Q
	o5HvyS1VJ77rnM/mF+A8ILXGxvNjbt59KhcuU8kvaHE7Oae5aXkKwFxWEgbA+ponPpV
	14t0bAiuqEFXslJ90dD+5A4YimvBIWEGUFX5IzhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1b7a82d-5470d56a-9726-4561-a9be-f60ef5657790-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25dadf53e5c11907d90c46dba88f3127f9700b3ef4c16cc77b65c4b52c70ffd8
Date: Wed, 29 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656544012
