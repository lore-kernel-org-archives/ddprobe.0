Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5561102
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660624253;
	h=To:Subject:From:Message-Id:Date;
	bh=+GR0XYDtoW+jYH0X+XlWfMOCuHarbjx/7m5dde/ue6Y=;
	b=kkUvqUtKErUdWlOs/ulRinoNLdF4nXikW2W4nCm0NBR3k8pCHuf7LO/wci+LFovi
	+1QMQ9teg2dPxeHfHbfu7HkpE6+yPrFrHuLY1frUaQBEHJkvDpQBcFiJSKWo9SUKLBS
	jniFD8o4oaWuxWy5iMxggkQQFBPnCXq15FU52pkE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660624253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GR0XYDtoW+jYH0X+XlWfMOCuHarbjx/7m5dde/ue6Y=;
	b=T52cvmtIeQR7ok0BAKaNxM/3qwPZpz+5fkaumPxllUxqjIKo85l0JLQZndiKkNQP
	/0cXtoR6/V5UO+tFwldLLFFzcYtovkLF9so/syp1fsrkY95zqMFdX26iA2CC0nDDULH
	KWf5RzwepJsR4+rohownTX/MStSLCrX2ckebTbKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4eb2e8c-a2dcc91b-42c8-4021-9eed-830ed96bd9c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9a28ddc2ee09af393b3265b6328675e33576184804e58304e8294e9bd01a3b7
Date: Tue, 16 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660624252
