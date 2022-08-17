Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9944D187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660742452;
	h=To:Subject:From:Message-Id:Date;
	bh=15U34sjQ/qAwM0eN35H6ow6dgMniG4rdI3Ntz+Tpx9A=;
	b=SLi+x3jmyNgQfUx1W7vfIM/F71Ar1j5eAKM4q2/9cJNOYWHjQJSXVlvnsfz81bsm
	Oxf8kPpFBI454GpHQ8iGqEWvjb4iMVrjyeJyqVHj9/9sehlb2v0YH81NaqjFwnWww5s
	OwjJUe7FPHx9TRDvyRPs2M35mZe3wtwhqQNH3YCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660742452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15U34sjQ/qAwM0eN35H6ow6dgMniG4rdI3Ntz+Tpx9A=;
	b=NeIno0oE47q37zbMzgF2pgGrCRspFhyYNV+wq1V31KIWpJ/VyHF/v+fZh3Y471EF
	uWxVWWZe8SLkd8l15QmgB6SSqfZvIz6PKWC5L+GqQYA0ZkgwKKYzNtAPuIRVht6tUzb
	DnnhKfRfGz3zdq299OliL0CbOuuc66X0y32xWlro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abf6c54b-333d8b48-0f98-408e-ba2b-556b4aa60817-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91ebbaed32d6b946265e157f1a991c8935dac12fc61e6de978a105953be8ef78
Date: Wed, 17 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660742452
