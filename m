Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E99B10E8
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660573853;
	h=To:Subject:From:Message-Id:Date;
	bh=uv8Xk/fn2D6kHfXzTTn5HUDca6D75XVIQGG6L7Rqw58=;
	b=NhRTCRPvYg0ggMYvN58H+n0Wpw98v5Xceh8Urw4FZ+0iUesYRxV3Bmpn7vY8QJx/
	nwzVUy31CtmLeExtmax5U35snNo7NrFMntpUmhdty8kp6WaXHfHVGDZwK2HnmDSpM8L
	u7m5A/HCZt2AIsd7ee4rSquDY0ewj3GYwd/FCE/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660573853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uv8Xk/fn2D6kHfXzTTn5HUDca6D75XVIQGG6L7Rqw58=;
	b=kLeNV0MesUibv6ZFxIG2XgOPy1mRHzQvw53zThdGcgYTvwzwi1a/+7NfqIwFnzYz
	qF7oZz5rmOxXLuUfQHNmLKPD/qQrln3XKCn+JJ/10DFcoZ4PUcZi6Cuv+GTJKEOtpsZ
	OTNkaPh5TObvXWIG/ioDFXArbCBVbRaqBtn6MOtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1ea2436-12ace181-20f4-474e-a87c-ece7b458ce2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce2f13aeeaac87559b6a54eeb7f8774ada34600c1643d756d126673a988540c3
Date: Mon, 15 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660573852
