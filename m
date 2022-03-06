Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AEC7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646600785;
	h=To:Subject:From:Message-Id:Date;
	bh=FBmEWd06HT5tzG7b30k2/0qIfPAxNi5BjfcdtxAKY7o=;
	b=kS6Cqx83gw9+5K9xp0dCjly+elhlhEolr8XoZjrJkC7mbrUs+mtJJB4io7EMkFGx
	7mSW34sPtt7XlXG20ECfqzqOxXPYm7sZXXo4s2yHe+NVjqaCbh7kooNt65t6YwvfWa0
	Y4SIGDE8Yv4AuMIL22jrU9Q/LpImfpzXVmWOAE3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646600785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBmEWd06HT5tzG7b30k2/0qIfPAxNi5BjfcdtxAKY7o=;
	b=XgIb3cYn5EzPGU/fcEMMVkeQXBrwF7WtMOpEIObdStGoVcDVxRtfHA02IGgidg6M
	+WKyrHe++UZcVgqQFH6SC9MpDbims69/q0UsqOdTxbj20n7iL0ddtdqW7aJPiGV42Lf
	JwKM9jjB4mJ502dNV3KhbERyyq7PwtgykCvlQKJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f610e0b73-9094ff26-a42a-4971-9688-ecdade5dc3b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7a992de041be5b45da35be3f93918192ad4af6b232807129db1d497056165a8
Date: Sun, 6 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646600784
