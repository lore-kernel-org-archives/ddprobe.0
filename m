Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73E57C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646093784;
	h=To:Subject:From:Message-Id:Date;
	bh=y7OjfN1dF+x/lQT9s97QdIiuQBLuFOAhuj0v09kHi1U=;
	b=CXkryUUSfVpJOQayCtL6tlA4ED/cIat1gIF421yP0q3xJnjGn1DK3pgf69433oku
	lMNuJMd+/9HOkzQid0N7/WTuJu7y7RB+KkVVhEDaiTXJ7VZlrNQj6nmzplMnN8zXaNn
	ZL0j/NRovtoHaR6GybSBBT5syEJdAMn9SaDWlWrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646093784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7OjfN1dF+x/lQT9s97QdIiuQBLuFOAhuj0v09kHi1U=;
	b=i/pO9rbrrYdPVi+y6MN6/hVyvLnmuMx/9ZzLjMVTMBtbPa9MrgTsHL1xK3mRAa06
	b1NuSbI66Ry10B6do3mLeM7RxwC6QaGU3atJQpbkR9o7H3nWWP9HJ/icIHBoN1gVcIV
	Ju/kiJ/oGFqdswemL0mUy5WKXpCQynWxWX9hF5R0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f42d5d69d-d9bb975b-3f9c-4d5f-8189-68f1085f3c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71f9b08d7be6fcd4ea61c095f0b1471ee65ab3dd4baa8a71a143d44dd308133f
Date: Tue, 1 Mar 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646093784
