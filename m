Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B74B2F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646702185;
	h=To:Subject:From:Message-Id:Date;
	bh=J3ORTgDya1Nqfj+vPW2BzUf1JZaKMv2GHBbvAtVlMQU=;
	b=gMUjOEK+4ELHBOpBDUjYEnPgpSdKGrF/HIXJE/XaHnCQyNwQdIJVbIGzT5UTapJT
	+v5Vv/jl9QgkqYQSRenRYofoqcYMdgyhvPS0N2WY2kGiS3MBEwpLvLcaOOwrdJIugc1
	cSgQ0/4wiut0v2ExnIKJC5OxhkHE7kP4BjKc+C30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646702185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J3ORTgDya1Nqfj+vPW2BzUf1JZaKMv2GHBbvAtVlMQU=;
	b=Q6NUHq8enNFv85YOpVBC5GNee+ZO6bniKzfoXkYCxJYQ8LNeqBa85qyHReOLXx/+
	47cCNznmJ/2dPv6Xmpckiy+sRBvwUUlNrYt1nKr8N0OqL1Vi7oR3jRQQuKPkeSPUb19
	wbd2PAVRR4fnZL1BWIsWDlobxoVwXG+7kxb4TEog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6719493c-8f957f52-1216-4c94-863d-5b7441060d7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a1e49b8cdfe1f741eee54981a604dfe66480d9bca5ea976638967c665e69d02
Date: Tue, 8 Mar 2022 01:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646702184
