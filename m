Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892CD1FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645785984;
	h=To:Subject:From:Message-Id:Date;
	bh=W5hQDyPj3hQJYKE1Mnghgp0V1cI98KqxRAQwXZmEu1Q=;
	b=LyzgZXa6naIewVsvvluRngY2IjMNjt2GZjG7AeTaS013YRkKdsmAhcQ9/KyhvVPD
	nrSKGPSIEjrfr3IUbyT+VXZcyqOn23r0zEL/jd3c0lCdXN6uWmxRxGdA09gFP9t5sdR
	XiHWY6O26Uwr2eirqzxt34MADVerHLl7VbqnqhqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645785984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W5hQDyPj3hQJYKE1Mnghgp0V1cI98KqxRAQwXZmEu1Q=;
	b=HY/tz40NuJU0cBT3F1I8TxWmwXDeZ0uVZx6Ka/rKIJ461suDy71UoqLfKBeDFo4F
	QBizM6Ugwl24a+6B7pynHPXbiqqyyYR3z0l/Atd9lxPqkjfraBayxMJw9HgJvHJQXiw
	XRpgIjmywLJrH5SGAKfgOnOfAz324z3kOmGD5eSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f307d2f17-6148ec98-db30-42ba-b2e8-b800c856202d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e6a0bb8f18ac54415307453540ed90521a33cef0bf8b96acbed882343ece13
Date: Fri, 25 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645785984
