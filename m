Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFAD361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647044184;
	h=To:Subject:From:Message-Id:Date;
	bh=4Yl+vBe6Pki0PyuHqbsRuCt5DcOcyp14gXKGCkZxHLA=;
	b=bFj0O7KTrZBNLjlyxZ7syAAYBmm17VlJ9oUdYmJmPFJWfKBWDihjEgJtdPybrEY1
	4uOc6HAbfof/C2k9QEq46z2kFA+zgFfT3wiC8P5n8hUNBmiosbFkewV03jqsQbREynJ
	JO3Z1p0Q8cRvZ9bgkuS8jeB96LzNXKYH8w0hzJK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647044184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Yl+vBe6Pki0PyuHqbsRuCt5DcOcyp14gXKGCkZxHLA=;
	b=b7QRlUgbuBDCJ2XPszQ86IjRH1/71KD8GYr8no8YscYPJCwadLVQdfjJI5Im2Ya/
	u0QE4AVx4XjIrWALN+CLBHzKGi8FMWdbGL36n0yD6XIqXMpMEZX4uVFCua5sKoGyabo
	Z3BMXgXDnz15Hn1Zcmm+zpJWH9rsVThXF/a+wDrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b7bcaa3-533ba03d-7b00-4ab9-b4e7-625faad6327a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 940ae120f290c5db9a37bc9ddde29d36bab35eb43f3abe9271b15faea7d55ca6
Date: Sat, 12 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647044184
