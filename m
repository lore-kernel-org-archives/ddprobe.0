Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4EE1C04
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660571453;
	h=To:Subject:From:Message-Id:Date;
	bh=l4MEDc4eaDbOavM2QJyKtaS4MN8J4lWC5le/HQ01OII=;
	b=NBx7P4yqBIRW4Ykh9RUJQq0AUqbrOwA2GmNSutV3EuxkLFTObMm7ZQGx1FEEO9H4
	520iAnRt/8/7ZNtao0z+tcRKlUPWvcnAOgrgc4CiyZZsU1n5INcjaayodIOfkVXkm3i
	cA11z8h8jXtQRlSYsGqmopFqamFf3V5/2W97IICQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660571453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l4MEDc4eaDbOavM2QJyKtaS4MN8J4lWC5le/HQ01OII=;
	b=LB/H7E3XgMYyviGa1qhlxEEss0y1ZZ510vW7nOf3VE33W8thRjpQ/5Fe1gxwW/E2
	thZiKgl5xzwBWoONcCcNG9OrPCq7mQfO/wQoinp+EM1wfaxN0WoQK4ZhEy/c+6SxUAC
	lTFtmxiK8Z5PJXwb2qWj1np/QdktpLm79pz7PtCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1c5849d-453017b9-8754-4808-97fb-ffb7df34580b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55700817c383a6da668e3b8d6b4d464b6e05df19442ba2ebe3a6d84c548a57fc
Date: Mon, 15 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660571452
