Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5EF17D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660206652;
	h=To:Subject:From:Message-Id:Date;
	bh=5coVbGTCRPqW96k/dm4Q36yP81HgvG1iivvNVVy2CUc=;
	b=gq45z3zeCsmNFBf0NZglAxp/TeD5X7EtnbGHLVyS65yqSvQMGM7I+QhFrgQEbdKE
	O0QxPCVddaDzqmvx2F9fAzIEJTyTJYM1vJ1ytcc3AKRaJv1D2dIglW5PFrWpnB8iVEZ
	628sB0pjPEXxCONx30tZhDYLamDiHO+resiO7t2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660206652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5coVbGTCRPqW96k/dm4Q36yP81HgvG1iivvNVVy2CUc=;
	b=UPqplAmGGHFIMOhmTCVJM0f+w9njT95VbekyemHmpEoLOH0//uZz1otIrQ/pJ82X
	r7/Dowo0dCBTQlNwR72C9IR2us0kvsxYnip2NaStUqMA6zjZMDjdP2vW9BE3A0rJkCr
	yPWdyNh1PhOVtNPjzdkGj+j/rVSFrgs6rNWj/QtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c071ca2-a3f08e08-10f5-4c3d-a300-8f63ba965cfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd430b007357f06767e38ccba0d0f9f323945d55c83e0448fab8a320c54d447
Date: Thu, 11 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660206652
