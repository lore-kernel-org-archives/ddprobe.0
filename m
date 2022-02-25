Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628627B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645775784;
	h=To:Subject:From:Message-Id:Date;
	bh=VvCmYACSVWXId7b9kHqrcRQvWZEEuXcYiKH0Ehu5U0A=;
	b=UrgnEcQ/tWZypwNvo+X+k/Te4p+LsOZvdXfGfHBhqmpsgL0rOg0bfspRLQyXmans
	Kuec2OwozQSrj7zxihzx9s2bucTSkvqZKpRwmSDbMSawbgmH1Jv8d8O+uMYNnYhnPIU
	OGSso+3ZImyqXxPsrTKNIqCgeIxB3GHPqdHHfZ9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645775784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VvCmYACSVWXId7b9kHqrcRQvWZEEuXcYiKH0Ehu5U0A=;
	b=N4lzDOg6w8XHpjVP9m+DVEVhnmYByM0BlKAr8E/uahmqOjxEy4bTs7hBh10xOB//
	PDSkxenff1QJk98QAJx8D/Na4t9PNY20RTWbrpZbqhPdgyhaW63Na46RLvVCC1xNx6E
	HBTknRUJCGPSRXvAk5Z7uLuNqrm39exFJRSk33dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fe18b41-5ca16dd3-c050-41b7-8c22-13d5a8703592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebd5fb67d2e1c346b70bb4daa332c58e614db50a6a1647ecf0bcbd9cf45d66df
Date: Fri, 25 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645775784
