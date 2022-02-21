Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2852568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645437684;
	h=To:Subject:From:Message-Id:Date;
	bh=/XEUOh6OBhq9s0CEYCLiShPY70O424/GZfom8i+OWqY=;
	b=fak6ilT4W7szNZd6r4UCgt6zShEDiuG/lhDn2GtsZJZNJLhiILbfalyLIDBb/hSP
	4t79HzesJx7X/FOic4ov82HViIaDSmcsBQxdJyRdtmSC48QWZxPfVvLoa30gheWD/TV
	Fxc+rNDievzQsHv05exZ/t5RNAAD7vnCqntcUUGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645437684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/XEUOh6OBhq9s0CEYCLiShPY70O424/GZfom8i+OWqY=;
	b=Oo/eFSPsGPlcd3bJapkn83c2PhqSlY3p+dvKyawHPaCUqysE13a1yALFwD2XO9mI
	5/aEoRsuLAWkFtqgG/ZBDfiUzjvWbQK2dyXWvBZp63mj5PbXbRdjDeJcD5GRQ5xQvEv
	T+qwZKsvwWUu4qfITJCkpNwZvtgGqYEw9oHbZ7ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bba8c31-4a1ec539-a2ba-48e4-9895-fa2efe6a65f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2836d04ad81aae7f01fc7a37d8849eb145c98d634712869da82801c58c482d7
Date: Mon, 21 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645437684
