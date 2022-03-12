Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A420258E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647111684;
	h=To:Subject:From:Message-Id:Date;
	bh=q+YgqRuAU+7FeDBxlrIHCcA8R7xoa+yu5vRK8Cc65JI=;
	b=IKreDxg0AhSNS6X+L4FcQdboQUd4f5oFgJ825AK4YTNz2pD5yLrQUfFxeWrUZJPh
	J5HDGqkwsEqzBZA8kS8yKw+7YA1eklVtn5lQnS/yL4PLr+noQYxouL1ghvmVyqVfY5k
	m8mt3uejsUWEhmIF+G3iONgzWx68TX5jUIzInB1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647111684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q+YgqRuAU+7FeDBxlrIHCcA8R7xoa+yu5vRK8Cc65JI=;
	b=C8WH4sgSoiMEaSRj/hlD4ua+iPb36PTsIzuf81kavgrWg+qReUA11K1wSqJGA7Vv
	uwChq8376gBVxaIaoGTzfqkxKGNLJoqMbysrn4eAVlREOtR7702M45xFJajFLvi64ZR
	4O/W94aSwYsd2l8q0YHHFVxYYd4CvupQ+4f/uKWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f81c274-65e93857-2211-4c2c-aefb-2f799c1209c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cb1eaca16365a0a490ef66ef9b4ee85a744686c9a2ebbf770c1e57d27e1cb0b
Date: Sat, 12 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647111684
