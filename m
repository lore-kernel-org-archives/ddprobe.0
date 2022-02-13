Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475FF642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 22:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644792007;
	h=To:Subject:From:Message-Id:Date;
	bh=mvOHok63M2LL2uEQEWWdbgqHqCmIvpqxYmwYDPUbolM=;
	b=d6cdOhFPb6XyPjz7BSgfElLt0103B4Oo57MsJs3v81+VBQWzlymU/uV4lteiUVoe
	/L0UGOunnqyRnut6OBKRxPMdwWfvKcA5SVwkjDhEWAzieD9ukMidzUmz2cX0GyRTt3+
	TbB+eUZ5czybLy2bK+LigpqgU5I6WYkD71RA3PtE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644792007;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mvOHok63M2LL2uEQEWWdbgqHqCmIvpqxYmwYDPUbolM=;
	b=ebmrQQijSiPVBHw/S8ZiMekqyGhfOSZLmoap/TEaTPBRbSv8L7tM7gzIcdNwW4VC
	nqFBZmI+v9+jLskl+gl3kUg1w/1a1GJS/d2Ozmb24N5tagqw0AsvmVtDKsm+znUL/37
	xDu4JIJpcuzulTOtHSHiQQioFDyGCD4+7JI/PlUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef53e4c4d-28d8a176-2947-4cc5-9e0a-062e5e13922f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cd0961131693dbcbde65d7b21edb0f313a3c1b4b58162b9cfddf7f0c66b1fe7
Date: Sun, 13 Feb 2022 22:40:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644792007
