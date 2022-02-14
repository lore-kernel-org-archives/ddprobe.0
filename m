Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654ACC8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644874285;
	h=To:Subject:From:Message-Id:Date;
	bh=4i5XX5G+1gB+GyfJAaieoXu7zAsnyhPxwEaU5TslYlg=;
	b=Yxxh/YtbFkCZEVJFwZi66tiA2AJwOGGpKHoNVawzO0XjZ4qivP7JFEMCZ2sJBds1
	D5pFmq7B0eavxEsS5d04uZym6e/ZbXCpNAfKguNMs1ME0akjcHq5HVHcp01nynCZljW
	Qktsz+BEGn+NOOX04hwJQpaZ3h2HEkkNAuzSCBMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644874285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4i5XX5G+1gB+GyfJAaieoXu7zAsnyhPxwEaU5TslYlg=;
	b=ExeyW2DuOHALGIfHCTa+fl10gRWDzhllrXMeRiYxeIW4yPDaHREaJTdJOqXEs6v4
	p3k9PrEfZxaPdDncYacUEFY/nbrvwyrRgBl1JqbpoFQEEUl+0UtMrdLioVlJ2Wc3SoN
	NwSAJQYQAMBeegb9x55OCVaK1Yti+77qLuEjcltc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa25bef3-e37e9499-1c01-4b97-b7ad-af79df218b64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d372523dc4bb64c0b8576ccf2a7fd0bba09d68346332e851f78936c77e651b6
Date: Mon, 14 Feb 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644874284
