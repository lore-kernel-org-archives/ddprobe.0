Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB522CA7
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656864412;
	h=To:Subject:From:Message-Id:Date;
	bh=vrGAyhcQHmvjsc1niCBQgNjBVeQw4rf9fGI8WrzI7j4=;
	b=BTI3JcTFlb7KOKuhksl0U9oHG9DUaAsyR7H84sYOPl2f3ijuEXNSJf7q09ReUL5N
	SPlRxeQrfgHTOJeP/g4VHXhWCD9bNc89aAN0b0n+IgH7IIXuxIYiadHl4PjkGzXxeqX
	k4RtuNkhTGy0nTcDKpMcFiWvRnYIhIfnn3wlAegI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656864412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrGAyhcQHmvjsc1niCBQgNjBVeQw4rf9fGI8WrzI7j4=;
	b=JkUo2OXlRWNFeW2r54uT26e53zJQDXquMDaJg289M1FQqvvSNCTRxWmZHKwNcAoE
	797QZn55XjKquc8tmCfslPt9kcy31+rOQB3d3INJsZoDIB22bSpnI0H6by3wh9vkpR0
	a2xy2T8rQsg6fXMaKXqQRP/e125d5RL3pgLtZ/A8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4d0929e-807fe414-e9cb-4926-ab8d-0fd3f719bdd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47551240e4e5dcad9eb6b7d28fbd66391c2a799ef734263161fa76b6580f611e
Date: Sun, 3 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656864412
