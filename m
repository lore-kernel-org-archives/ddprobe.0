Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA50053A4
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658327213;
	h=To:Subject:From:Message-Id:Date;
	bh=xkKPGWeikwFuFA8by6o8HdKO2byZAc1fmO4zI2sbHDM=;
	b=GyIrh8ZIKdH9XwLXLOiGA7lfD5gTrWL1IZjgFgpWMNwzHPIUIuQHKCbO/jN07UYP
	DEvOhZYylHk86sYfR++G8W70/17uO1ESiguFM/g9nu7PCgb/LK7iR8GuTU3XXd6eMuK
	PABJdRwFPHw9DICFeJ9V6MvsNT4UScQjHbjY+8jU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658327213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xkKPGWeikwFuFA8by6o8HdKO2byZAc1fmO4zI2sbHDM=;
	b=dSB2g8jTYvv1MQREkzmebsbxP241PKFzFdy2B1Xtojtw/LdTtVNXZKGSCRdhTBGW
	19z/Oh8kRCwwWLADP8L26FLW6acocRzbkU9M1jo5NoohyXrbmvg0vQLQqCMnZRokaBo
	h1mMPEoELqkOUvOzKy7/6tpdKmfBRqSTrhP9Cvgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821c012117-5aa49f73-bdf2-444d-89bd-0469449c41f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 926e560adfc727e63e0e8b35d14b9958f94675ea51e6d79580b8c489f8fa6a25
Date: Wed, 20 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658327212
