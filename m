Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0461FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645120885;
	h=To:Subject:From:Message-Id:Date;
	bh=mzFDF5Rfg1rD5Sq6Tls8E+nOmHkKZbQOV3bEjSpETbA=;
	b=htpxshTpNjIRQhLJFbrHP5RJOFbLpWXozeQYVbug1kzRM5L/TDXUrB2dbjOFGnqx
	b4/TDgd2BK5ysTcbzuOI2uhyCuMYs4XDkoaPGlIXWb5+8ANU0ydE52ikLtgthAhrq7L
	gEG/AHPj5TOPuUit/Pj6gMueJo9MNdudIVK+9s8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645120885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mzFDF5Rfg1rD5Sq6Tls8E+nOmHkKZbQOV3bEjSpETbA=;
	b=ZYCP3znCbpwG+PtJLenyVvRvLQoBhxQ8gLlH5d2nOqKu85ZAOn43RhiZDfbI1J77
	EPSlZtnLFMNBpPAeCMLDgix2UnGFyIBCa3z6uL9O4yCKjBYFnVGf2b4uQ4+mrC/xrui
	NA3Fc7kLQIZ1KGcKKiuRyLtUNs9dU9CQ5cTonr8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08d890ba-0e013e99-7b40-4617-a37a-6d122bad188d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0578fd819562d4b122d43e2719a12e4309e41942cd5138121b8491c53b6399fa
Date: Thu, 17 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645120884
