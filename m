Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8750D6136
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645398084;
	h=To:Subject:From:Message-Id:Date;
	bh=4KdRDtz15YQFr/IEWPA0cwKUgMF93J6QTQsU9OrPqec=;
	b=N7XCgf1QpVqEuApW090LS/asxpt4jrXaOjoITk9mNnVkZQ2rSVn31MFZgPPNe+i+
	vOAQIOGqqRPBzTKAziEY5eurK3OYzhod8HDGsPB4B76EFra4OpntZffTAVgP13IXFxB
	7ydErCv9cI6Q8oaHU/i0GDejAeFjcyIl8DtilrK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645398084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4KdRDtz15YQFr/IEWPA0cwKUgMF93J6QTQsU9OrPqec=;
	b=P5Va4vz3yP0GsexC/nkOxGAasFs19pEivKsqj7PoJ9O4ePfq6/KMujFoT+YrTss1
	qy4ys88wPvpIO++dWOkIwhyNDEd11D1Ut/ssgTzTN3IUKvIfvB8NCGBet/WlNaUZpUy
	jRCnPIGVR0Vj0RFe7mYrELYk+KHfTzRckRdATUFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f195e4c70-6ecf2239-ad9d-4719-9e5c-91c45ff19f39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e869d708e5ec02b5df8beea93237e799cc4e3824aecbf3887685dc01b1e4f807
Date: Sun, 20 Feb 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645398084
