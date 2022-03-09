Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F5B7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646785585;
	h=To:Subject:From:Message-Id:Date;
	bh=GAwSjboJMAdk24zDBV/sL+HlyIRL/Fit08EKfceYztg=;
	b=RzN+1DwkPMOO0OeZXDJxOPWaoQvXXezBZLFeZd2uZ1sKKcb7HR1wh/9x/fH9Q3si
	1mivoz5KRpg0/N1RoNt8WXqAe1CEKKWAPQVgooFMSX1OvfKFM5q/Mr9hjfxa5uwqyKF
	Q3wODTnmapKs8bS1Tfs6DRBWNf0paMUq+o5kq3bs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646785585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAwSjboJMAdk24zDBV/sL+HlyIRL/Fit08EKfceYztg=;
	b=M5LHUzQ9rzjERv+749VQHSambT7u+hw9dzjxMBbVfbB1zdSn7XaKvxx4JCx0/R+G
	y+ei1QDCQzdbM/6a46Dr86ZRurL9TJktuceL1vJi7dtXPLCEp3650oBRzTw87ckZSEp
	mDBoqHNOcN3fj0Pa86sAkw29pHdjtRnYb3xGX3NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c11deb8-82191b7f-ad36-4185-9e27-69e89282d08f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a99fb58739b0ed4d6bbb9cbf17a1b7d9196738fcc7bb38cd61a998b15934839a
Date: Wed, 9 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646785584
