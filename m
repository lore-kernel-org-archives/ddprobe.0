Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D44323F
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645171285;
	h=To:Subject:From:Message-Id:Date;
	bh=wPjjBUb5W3RMIySaKx0+MKXxAfduwenY2n1iArc/vDI=;
	b=KR8AW4BlWAC6JG4WlIDQHe1HIWrtd/8C+R56XeNwaJWCX2glducMStaj+5s1/F+H
	sH+Ktl7SwgoReNNRlcPCgrj6I8ELrNpYLeQCUfj7k2Xaoil2kkYZaON1FDUgxRvzyTU
	iq+DfR8CV6NSaQWndK96tc/jNr4LwkyxuVjUA68I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645171285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wPjjBUb5W3RMIySaKx0+MKXxAfduwenY2n1iArc/vDI=;
	b=j+b8LNkfDopDd1EvPeaCLQhDdnN3BHmBVtkPidwBG6m/17hE4aLWC1sthAQFbnGI
	/lu+N24/znLnaazk/uspsvSBBLS4dZ5JSXGWzRt3k0xzgdvY1cpkxQlyexW1jSseoU4
	yDcjazl/vqqMADi+cr8Teh2JRstQNNLfIwQEXSJM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bd99b3d-4c2ca868-0948-4f0f-b5b5-2e960ebc524c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fab486ed8631280cf488c68355221eaba3ddecae2052cc7d67982b29373655fa
Date: Fri, 18 Feb 2022 08:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645171284
