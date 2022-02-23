Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF057B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645605984;
	h=To:Subject:From:Message-Id:Date;
	bh=I6KKMv58ZjF1R80naDrHO7S1W+0b6Uh9j3VJottMie0=;
	b=UEbkd15jq6u665KUV06BEs4u47wHRXDrTghmQi8jytrYC3XggoqrN/G/EVCITOnE
	R0duL96NqtmvHgS78+3Z+hfyYGep8HHirazTflqBp7aaXL+lxrwMG8x/fa7Ylje7Jv2
	VUGHY8Sw6rNYL2Ir3jJGvHmTkQeBMzrYUC+LC2XM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645605984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I6KKMv58ZjF1R80naDrHO7S1W+0b6Uh9j3VJottMie0=;
	b=Bk3gGhroY+W/BpyZwXd6XCy6TJr63xBQ/cu4MIfGq65Gg1OQl9okQHwsjBkBEq7t
	zP9FymAzYUxHSorvn1dO9jCuIGlPTX8wFVTbhIfZF8wGzJvDe5GSmiGMqET1Nbj1hF2
	1YlIdocDUIT1+7LWaEtyd/rbmrzeu8eAHhj9UAVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25c29a18-e1aea14c-3fff-4fbd-8dc8-5e803b26c902-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60747f894b624ddc06067a3b79e01e111cd706b9491e51e1e5329fb9e5566288
Date: Wed, 23 Feb 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645605984
