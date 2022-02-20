Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81E1017E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645336585;
	h=To:Subject:From:Message-Id:Date;
	bh=0cMDxT7nTlFMz2YwccoWiXEeEdzjDxIKdEV/9IGDUcM=;
	b=IfCEM40iwV4cKs+YFrpq8XenBXw6u8IcijJbNdWehswVRcxfB8XxRUe4K6gIbF0N
	ptB0iYEvLY0yXJin9O4fwCriHpXcGsQ+JnPsDndyfW1Pflph5Lp12cQjouYuBLQTwqL
	1Z4/kI9/G+CxvVXDMpS/c7z0viTZoPvvRp1yn2uA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645336585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0cMDxT7nTlFMz2YwccoWiXEeEdzjDxIKdEV/9IGDUcM=;
	b=Wvqqkr3NtmuOdDDNNNoZ8uC33I1dIgMWmWTgMbbIOAMAOipo3EUDR92S41O6ifCC
	XDjr+tgmz6LxvT0lO2eUy/Yh5HqBFuspZHcUWVl6RJ6XjxGeUmJizrieQ0s3kGtqgiU
	Ut1G+CdmCcEn+bzYkL5zBE1oYAZW22TNqP+5El50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15b3e248-fff229ff-5e28-49bf-8df9-f918876504c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc29c940d9cf4176002d70fdeaecb332e617585d442ff429fc372b68a45ffd0a
Date: Sun, 20 Feb 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645336584
