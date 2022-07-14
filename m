Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA187E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657757212;
	h=To:Subject:From:Message-Id:Date;
	bh=ayalxDcWFlwaeqCjUwM/EusPxZZgPfDx/25i2srDzyY=;
	b=ageEWGJVBenBzcJBGF6ob1aB/cYZ5b4DC1Xs/NYa7TBTsRdXCMRNTChOwpYJyy0Y
	1W/+wLyLZgzEHkeuuHFrbzyQoZLeuRIpTIww6lQnwteBgscHlIYRKiUyBYiP+f00aZz
	basDDvsQ6LzSVylABmVFs6YCDFWozpWHhONgN4k0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657757212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ayalxDcWFlwaeqCjUwM/EusPxZZgPfDx/25i2srDzyY=;
	b=WrhvdLKUQXedFGCNeaFeF95q1OwjYOTXOJc3k6Xzqif+G6daS6AcaCERlYD0Bz+w
	yEcBsrQZrNuek5uGF6muaGzD2nwYlbsoQW2m9M7yXxDgYD1J+ad5sa+SzRDYzeq4wj5
	e4C1zTksdR0qw728WNSFSXZlQnGlkTI7NXMuKHs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa079e86-71dffdd7-a647-43be-9794-b690533c4c8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4c306517762241d6c8654b6bfd54325d38ee5eaf50b41528bdfab6bdbb7cd5e
Date: Thu, 14 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657757212
