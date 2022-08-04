Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F407C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659631252;
	h=To:Subject:From:Message-Id:Date;
	bh=j6M+HItVxRgx8sHnxUg9bliI6irtSBPXLoWNAy6jCsk=;
	b=DnrXa+fOr/eQGidkgmGiznJu0pOXEr/R3w67IcWmaG+xyo+/JvmsnxIbL+tZekwM
	ZxNXWpjj1J467sV58LlRGrxBofLEuPCC1jWvAod87oK2lf5s3IzvVcYn/u5t44twxRX
	HlSZihLN2VFbiO+OMh+YEUa+qaECKtnxOzBKSB9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659631252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6M+HItVxRgx8sHnxUg9bliI6irtSBPXLoWNAy6jCsk=;
	b=RTMJ27XTIYWUUhVjtyX8wNzbVZiSe/xlK2TPG3gszf520B1DQSV0P3w+5v2HPQVX
	1UaWltvuby7RkirIHaZ5x25yDZDLZR65+NHZZYd9lueakSk1gbgbecA2meZwC88zOFk
	TznEK4UAxMqZETVUvWMYC8LuXSV1fH5/LoLE17Oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269bb34be-567e05e4-4e04-45fc-b585-7f009d5849f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47a65f10b59970ea03535c75d73c2b60801470e7654702b4b54805c563881546
Date: Thu, 4 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659631252
