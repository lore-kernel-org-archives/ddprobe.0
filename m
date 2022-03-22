Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70C9A54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647949884;
	h=To:Subject:From:Message-Id:Date;
	bh=M2pFDGaOCi0n12G2bs3/PDoLqQAxfWYobvfGXceQ7SQ=;
	b=i8GvKmKJiaexgSzGPzQZsZMQjOFZJb1704BHdpjtYrR5jYhdEbYXDSFPeJEV9yiS
	siecxG3ynboEkzzUPZdkxbVyksZvEUQUKGObgiE8f+OHkdUMyPFmrUdqmAYXFQczTNi
	X+rYbXHLGWeUH4Pwq7VvqEmIV1Ztwkyn+E8swrSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647949884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M2pFDGaOCi0n12G2bs3/PDoLqQAxfWYobvfGXceQ7SQ=;
	b=EMTKRd+d0lTG7/Bn4DI1Pr+Lg7ezF4c8W0OcuFJEyIdUhYMHJOkpRLN1cThr5WHt
	QFviQOBw1lqNnUPpX0gk+7Me4ldDMz/xGJRwq0NhO4xfkzn+B6JZV5bvwROfqT2M/oP
	Rt/M9qYWOdkI7W0FmbfVpY5c+zGzZ5d8U7kRGck0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb177ad42-a333eb36-8794-4bd7-8bd8-768a743b0028-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e37c4459441b843e18ccd16dad4fa93940ca349d22eae8698b4e3a26a2fb1e9
Date: Tue, 22 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647949884
