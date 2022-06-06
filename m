Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC69323CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654512959;
	h=To:Subject:From:Message-Id:Date;
	bh=vkLgs3BauKMh37AiRa9dxZdnPX2rRQJdZwRNkL+2jPI=;
	b=bVJhBOFIlT9PDyZye5Phi1ORw98m6yIJ/jsDBktYyb7jT3Ce4G5Sm0zQU4cMeNfA
	jdI/QJ/DKEcTC+57BKiGb49NPs5wV2xs1rP02pUNDJo/vDjOOt7+zV8j5VNy02rP7Xl
	xTeIhyZrFYHqUb5Bwn4EsfOdkoos9USQCSi3efpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654512959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vkLgs3BauKMh37AiRa9dxZdnPX2rRQJdZwRNkL+2jPI=;
	b=RpeePZBXIrNX1+foGeHdDJOKEcGRVvR0U5K0mcAObkM6wd+Rx7fP7arcWxdi9lgL
	LOQXBPEXfPE9vxd9ylX+ARVotdBxnGofq2xT3smj5daus/oOHXyddpF3a9ymY0ML9Ps
	y93CNk0aqc5Ja/PtCHvMtZEQ6SR5EBZC3QSqN+vc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138a83f0d-bfe26b69-2481-4074-b59f-1edacb8cfb47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12a7571a845e4b793350cc952d37f9bc8d525b4142d18a09e738eee6bf8a3c29
Date: Mon, 6 Jun 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654512959
