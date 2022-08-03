Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD151364
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659532252;
	h=To:Subject:From:Message-Id:Date;
	bh=v2vux0EygvO403XgNLXbOZ/KixaQZV1/z7Z/yPY7E4M=;
	b=NINDzYT6SmHFmod7lRYN6sQBHiAUoUjHfaNBOJTpohg02mww8WYqNSBWimTkz0bl
	ZMkhikvqkmpYOnPRYuMK1aBRfxDfMwyANwMLcWsPiQmCuxTdzpRAw+5/FgcER/H6tXe
	cVgfbQpnuF5ZbBzjjUbhm3ZzEnZXYP9wCmXWiQUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659532252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v2vux0EygvO403XgNLXbOZ/KixaQZV1/z7Z/yPY7E4M=;
	b=hsNY/AviWlpqW1xKX58xWsxRPr2H9w9PIBgrylJBYUQomQw7wkRASdsUCd0H3eZI
	0jc78CC2BxxcqIPQblKlzyVbfFWrre/8g07CfrduP7MJwEEOix7B5pbGx6oCjWaYMNZ
	yTkDdAeL3takJmHfAXWJovbuvgAfkNd022ZcP/XQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263d495c6-cbf9d128-8c74-4e57-b3cd-d08eb0f4fac6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14093e1f83144f91a019b1349b705246897b61e1a1b8e5a8db78d2fa69f5804a
Date: Wed, 3 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659532252
