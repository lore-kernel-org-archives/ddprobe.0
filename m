Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134567E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654017239;
	h=To:Subject:From:Message-Id:Date;
	bh=TaXdQrPl7ZzVDZAxs5NMMfpejfXryx4NjeX9Ypmwmgc=;
	b=DWvSbJG7Aqfv1WbiRUnG483+7PRUiuPzydWzAntX+Qkajwscuzi160mwf+wdXfid
	GB7nXC4EhEvikw5hlqxOXM9GeRVYHEhP1JxpJ6i3a7U2ubcVx+eccmpTpVXknd6mrYP
	xiG9s217YoOzvHl61/lUG/NFVcsub4OCYIaNObiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654017239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TaXdQrPl7ZzVDZAxs5NMMfpejfXryx4NjeX9Ypmwmgc=;
	b=FYoHyQOFgQYPwf5rBsIcxUJL/lne/6mbgp8XCchCRrgr575c3xdUUBiUH16SUTLN
	9IJpFo777yLEP6PrIGjxBMRmw2sor6ztHOSJkWg9+2/rRUDDbnQ4Jhp9CFaPlPKx9Uq
	FMLDWj12hb2pM9pXEJiRn3u1gEG8NGH3+D0M9Flk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b1c28bc-e551bf79-7ad8-49c2-8c09-1d57b333353f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a04977ab6d4d502d90b6953f56edea555dda032af2b31c0e5107444836257be
Date: Tue, 31 May 2022 17:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654017239
