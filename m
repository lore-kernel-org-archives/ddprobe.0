Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF07EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661161252;
	h=To:Subject:From:Message-Id:Date;
	bh=pReNzP9SFq/SINmp9Tyr89yIymLBgKxalhX+vPYlLRM=;
	b=Xr2lynzw/M/WcO86IuA45rQAWgCRszSRLXNdqvDGf/g5ho0p3xrdZiGity0eFTU9
	ahQ0BccRhZSZHbaYGK/vbGnp1FqY/8GLQ/5AHOmRixjlpZ9YqNDm00KXhJ0DsiRs2wo
	Rwm4CVuWsqp2aMEGlArh7aDNJ2WbtAFTdPWMJ83s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661161252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pReNzP9SFq/SINmp9Tyr89yIymLBgKxalhX+vPYlLRM=;
	b=TofnoGIqnvgmb+Wc40CwyoSfU7MTLo9PwwjCX9359AtjHKzMqJ2QFYyGL3JKXBnI
	YPeI3nTbBZP+WxwM8TwAH3UOIgPLJ39UrPeMLScHel0lLcwYTve1T6cVqAcFiSL/5jc
	k35bKveQjoIh0fqWioj6tIpX7SV3eBBpLyx2e1Bs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4ed26b8-0482da9d-f8ef-4d0b-9428-5fc0a665e2c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4530f0f0f1d032eb21f6956a0b836435074afdcb6c5c6dcd05b11715278a9d92
Date: Mon, 22 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661161252
