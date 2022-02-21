Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4991D7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645429584;
	h=To:Subject:From:Message-Id:Date;
	bh=SrArYRpMC8Z1oQxHJbym7wccpvImxdFlg+1A4U9mw/w=;
	b=MjnVnxBT57hRHMMy2MLqNxEvE5KsBb8DULhgMwSkhw8YZmGYsQY8IfIHpOwNAldd
	+M+Xl973upievZOF0buCaiIJVSH4E8SZ5yKkLRlNyA80GR0T1KPXWUBUYZZo7tabjIc
	YPhcuky+Kbt9DjWdqTGikiz+ZE80MFMSyG85vxhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645429584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SrArYRpMC8Z1oQxHJbym7wccpvImxdFlg+1A4U9mw/w=;
	b=X3BXsEZmzBb0Gzlhx9OrF09s93o/FijuU5O4aZIcXVrHjmCzhvBBN5MjuImpX7sp
	7beUKFWkXL5SSxDJ7S+Sco6vMtz9QChc0RBE2NdnupTL5I4LfTrNZTOnaHkqHIgfdSD
	KQdXonjNaw1Dr/oWeYAeGe+6hkWOhfWGQ3QZpkyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b3ef360-69d328ed-4d1b-478f-9591-4df69087040f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f7c14b734d085f2d61fed46842b4e903dfda8c2b1b2338a1fa5e5f86080b55
Date: Mon, 21 Feb 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645429584
