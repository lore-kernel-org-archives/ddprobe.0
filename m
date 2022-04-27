Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273FA2F4D
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 21:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651095178;
	h=To:Subject:From:Message-Id:Date;
	bh=0Q323D871bzHb3dxA02hKIIKnPOvWOVFl8GalazkXUY=;
	b=e8zjzBHW4CaeTXpMX1BT4UFYOpOXELcf0TyMb+gT/7M4w0uG7d2RkfWWIETMPw+I
	/8w6b6TsokggrriOJZCVDKH2NM4uKp/WcR0nJcxzslKyYxE7roYT2ZZ3rlBullDlTfG
	PpjpKqn2mnGMuG2lupacen9lSUZxXpZrOl1ftlic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651095178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Q323D871bzHb3dxA02hKIIKnPOvWOVFl8GalazkXUY=;
	b=BNAxj8HX/ID82PNPlS06xWVXVudOTRiJ5XVXhpNJ1VwI0wzT4FaBUdvN3Q7I4Ddn
	pR0mKJaJN27LQKVj+cV30g2+h2BTkIm49Ma3Tzh1pca0k1iWHJsUZGCLRFeQ1dJZWk/
	NnWGmuP1/V+HhdVVvwrWryS/4QS1dxOQidQazwI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806cf10c10-62f973aa-a356-4b50-8f5e-d6e1522c2728-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07820bf205d7d80f2290d9c8387cb38c890a2dc5d975032b904e7d6a39457493
Date: Wed, 27 Apr 2022 21:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651095178
