Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA675A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646946385;
	h=To:Subject:From:Message-Id:Date;
	bh=OfB4DcHq+7IHoq+P4avGVjm7f7SLRIDe67dE7PWDcww=;
	b=AWGjWy3Eh1tMSW/0j2SgpPDTdQQGdpfwsihGgiIfV1inaEfUIho/oTyCuhbzRdb7
	87OVsRi/CaCjkhJSNeXg2xF3QXlRxmju+Yl5wEvVkE6pIhylaYPqMb9ft9hPcBPo+7E
	8kJUKDqf3NgylJv8kF5+RpbK+YCpcFj6mj7IW2ZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646946385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OfB4DcHq+7IHoq+P4avGVjm7f7SLRIDe67dE7PWDcww=;
	b=RYvUsq1zHVUgAj1/8dHYOiwVHMxU4KTn1ZgJ+pDNiFdf5Aw26kgGfWLCrsGh4QQL
	0X1GhLdeXxX1nvqGCXfUEMccHijkHqSe/UyWdFgRUdoYNqVYTaxr+fx44PpR1/yZxfA
	cFqGihCXmhqzZLMxuUV7ZIb7BZdQ907vm/utZa3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75a77b94-ca58c821-abeb-4b4b-a1d7-f6ccca4166c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd991d79091c86f90ea530569456a9281c44556d2bd1c9318b4d7b9b11e524a
Date: Thu, 10 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646946384
