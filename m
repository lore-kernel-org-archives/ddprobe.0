Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725C03B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646668285;
	h=To:Subject:From:Message-Id:Date;
	bh=VYrz/8PFbjLQjeasnxLalShQnC9Aqdd9BaDwmMEN7xQ=;
	b=KcO1bb9V8puksk9zfAovW4Jh8GfqcTsHBVjWRlf7cxU1zyldNrx/K1cs9no+jDsG
	SBSynXGWLPGlfTPhAKePQkhrOJgTkeXSYPGEj1TDpuqZiDO1Yy5iTjLj4SwnMrm9oqT
	Qa3Vtl4rkjqzaoOeMqZtZuBbqU8Dy9/g+GxVYKHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646668285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VYrz/8PFbjLQjeasnxLalShQnC9Aqdd9BaDwmMEN7xQ=;
	b=IX0t2flU/9EDllALKBinAycRfXo1qIg/TzBYWi5ONrklOK69JD08rsbLeAdHqEIA
	iRMF89jJtVKyq20mxM28gNePY1+ExDPoXfwPxkgMHArKKdpY3kMlqJIN48+hdLoWDQd
	nA/e3/IAkG9FjWemlB0+jlX684fa5lHJ3ztQzee4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6514034e-5ff89fb6-6274-443f-a09d-f47d94256cd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 208f7e33ce0c5db0c51f547b6ab5939994cdff49a715add22ba2f24d6a04976b
Date: Mon, 7 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646668284
