Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A937E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 05:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651038358;
	h=To:Subject:From:Message-Id:Date;
	bh=CoeGBxd3tFn5PTXOU9+di2uRgfS0Z8GGgesSMZZczmo=;
	b=kMDozzZCGtx+dsQtqFfih80rp4xKWIi08YAX/n0oviAKQyYu9ii/lDTbiGX/r1ct
	eYFLgB3knn/tZVepbG+QMnI6WmGxo/4gzh78d8pHmNn8VmSat4OwEuGmtSEOFl47EwJ
	m8e22FGB3NOah1rIS7w2AyrDvySVCsgc6IDz9aiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651038358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CoeGBxd3tFn5PTXOU9+di2uRgfS0Z8GGgesSMZZczmo=;
	b=eM4cMHCsMk7XV6mwFe3wJsuFtCDr9Aq+wAlGdbOlB2H9giVVuGjU3jgZYKEI5KbY
	E7nJA6+ykbLUWzoAOx5wxeh8yy6bKw/dzfsVpTvxFyRVOixJ1WdCOom2Qptm8SdHK9+
	lQwZzTEOhhzdFUWjJmJGdvYQptTWMCDO1hXcPy7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180698e0af1-2114e43a-a1fc-49ce-b459-4abfbe896928-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12b1fb9c2a82a65f6df711470728e09c67d8e7321bc71fdd87f49e1c72cdde94
Date: Wed, 27 Apr 2022 05:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651038358
