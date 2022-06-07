Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DD47C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 18:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654628099;
	h=To:Subject:From:Message-Id:Date;
	bh=uB6r42HFrOSBUun3zoLjAj3/3F6yYHPHzXgNOnLU1TA=;
	b=e51NxK5CIJ6ZDaGCUL0ruLqZPrNBUT+NHDkMHq2WF0zdq+e8517IGX9SUP4U+wzp
	eGYwxqI+KtsOw3upoBdS8FklRerS1lC+rGGad81ixy8298pfZfNjwjET6QBGUUiAC7o
	YWA7SfV6PZDtuZN26MTvS731h4KpN8Tqn+UMngEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654628099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uB6r42HFrOSBUun3zoLjAj3/3F6yYHPHzXgNOnLU1TA=;
	b=KCb2vSgUloVv0KN9wpzuNtmNG05NW1FToUu9OpbduVS2auIx6ag2B2iN8G5y9Ys5
	wWG+kjFavawjUK3v3uuneGP4wsAGKu/Q9Vgk5Kf2n4Vd5pzbY4tIehRhZmbowtEY95d
	pa3JS0sbQb+OLCM1NtcD++qnEinIQRaCVJ2v/Ih0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f8524a6-77d47599-72b3-4856-9cf0-058df2f678f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9fb3cc5a97cc61c650ccd694b5a3334495a871573916a663cfe5491e67f5526
Date: Tue, 7 Jun 2022 18:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654628099
