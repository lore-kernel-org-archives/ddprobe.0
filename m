Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A56B7C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646553684;
	h=To:Subject:From:Message-Id:Date;
	bh=642cOFpdiLeqcgzUq7UUjNiRiSzTdO1aLG4dcovXZEg=;
	b=MNoevdr8JOsD/+fIJCws8eD73iazcHDmCZ21EzcbWd1wM77BHGMOqZn2CFF6Qfkt
	naVQlgB9xcrN1MKppEzMTG2aJ/slhHooK1cGAJ/VAaq8MZ55OHxRoA7c4yFXfzNgjoo
	8EkUPkmXKIjEF7MbYqY1vRxavLEolLNGsikjzaqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646553684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=642cOFpdiLeqcgzUq7UUjNiRiSzTdO1aLG4dcovXZEg=;
	b=azYzPlqYF7YQveb1aB1ANR3B9cz4+XpmPBFIXWuQmUrtbA2LRQnZRJGHuUM250DN
	G8lYSZ1l6u316u97BvM9+5+PIU+I9HLFbiPleu9V01ON/iTmY1ej1A38okdxf5Pbaku
	zuG+m70Ws9i6A7JOqhAxF8ll55COSr8qwRvbCpzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e3f5b1c-53807523-d364-477f-b005-3e7572e8513f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62bb1822e4079c4d80853a9cdb4d76031bf7eb9b9b41e6d14c3cc14c65c7b6e2
Date: Sun, 6 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646553684
