Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396A87E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657335412;
	h=To:Subject:From:Message-Id:Date;
	bh=rMAGELkpQvKEopePspZ9O+y+pO0Ctln0OmY/9j/9khU=;
	b=I8bbeJVFlVy1vSIkCprRIe1pKBQabEZL3tNvZzbp+a+dSPPLP4ML1ZPLbaqma7dc
	OSzoJC2cKN4JMbQuVr0sCEyLH/3LHjOcZTr4ZT5uHvKr1zsNKUy6YZxJszQ3nucQo0Z
	93/R4oopUT0/Fsz/E0mq24oZ25j/BNK99tIuS1+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657335412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rMAGELkpQvKEopePspZ9O+y+pO0Ctln0OmY/9j/9khU=;
	b=kpMVl6ZkHTcdSGSjBmzgN1VMtNfgqu9zMax8Hhtpz0cVAxf7ZjiFncxSQGOXmtgD
	sX2eR98qq/EmSWzn1HXcRlFyvYN7IwonU97NrG2HqHuO4uAA7FMxJK6rUCuyQ1mWD3O
	p44qxqZOSxMBciPyzaOsEvUdkDsBLjNhduK6/2Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0e3766e-2e4c6bba-2a0f-4df2-be3b-a33b8c0a108c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a9fa56f4d2fffd56524a4a7127101a9d561f225537df9abc6a93029e8451df0
Date: Sat, 9 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657335412
