Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2176115AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 03:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653016679;
	h=To:Subject:From:Message-Id:Date;
	bh=oS7/w8JARS3sUsb2SrS3c0o4zDtYo8juhOAdWEN5PFc=;
	b=hRDdTQJiZhEVkVhJmQuhihnRc4CEsWvJnaoZUBbXwPNGzbWesAPNlL27/NDHyptD
	qnPXpnbAoueXxYEDs+JKt62MMpOMtoGMAaK9iGOXqRrDD6nTLjziGoCf2DUsaJmMDvT
	VilVKXsF4cIEGzdjb0jrWXRFg4C421/w3YXPjxG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653016679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oS7/w8JARS3sUsb2SrS3c0o4zDtYo8juhOAdWEN5PFc=;
	b=a84s+/jIvoJ8XbGE9eW6fCfiQl1KQTFW+ZH1FvpXji65PMCUDHenmwcglgZD6QhY
	f6BxXT//h1NY7JWZVV+UuAVP0i4WgQYHKaLe9wHRiuHGAYDe7WREDqlNvjd8BoDCHfI
	tL98IO0MczggD6xlx6lYMyB/9pcJYErCzszZt2Tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df78d38e-4c4f1a67-1648-4b61-b61c-674cd62ec7ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4413bdea900ea17d939807e60e0a9079aa89b66f625d267c16cd5fe6f1c1b800
Date: Fri, 20 May 2022 03:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653016679
