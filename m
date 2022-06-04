Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EE81103
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 05:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654321259;
	h=To:Subject:From:Message-Id:Date;
	bh=ws4Yf8FXDJKc1Irsw2Mbd5KHVDZ4CGPptSU0HiDW7bk=;
	b=MfIqx/rZv2n7Wmxa09K5/ldGl6AJrhUvDF3+YiZR1M2FKpzhtAcR08CwvdEqrY8V
	zs8dEjHzicEw8jlb8/uYWRVnjMzoJ6qlZJNMak9qNdYwfkunwz+Z8QPMsdiEUpP1/j6
	mxHfRqM+T6Mwm1ZtpQvZ/q22f+LG6U1pprlkYWFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654321259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ws4Yf8FXDJKc1Irsw2Mbd5KHVDZ4CGPptSU0HiDW7bk=;
	b=c4LNnr3Jvzm+yUPiTgCytIF2h0YFmdRpFxV0aEHdMe9uPrMtCKd9sV0sZIoHSomd
	a+lrvWjXPhfrISw5JHux7NiRckqZXZsNT7xJQG9Rp/ed5LxZzGBPEB0c6CE8Uo6jB3J
	AR+oROLUSQDFSB+hxmnYeLy8tCCg5KdadpYL57k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d3b2341-76c78d07-ff37-4f40-af65-d4b833b1d085-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3678a94130dec9e9e25ed9615d71cabd6f8effdf79a63f588da4cf735b5e3f13
Date: Sat, 4 Jun 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654321259
