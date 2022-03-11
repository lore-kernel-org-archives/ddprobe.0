Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3E37E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646974885;
	h=To:Subject:From:Message-Id:Date;
	bh=LkwxrX0TeqIfZXVxliFqmGXuZ/5JKruyoqCOIgRAwG8=;
	b=NMhk0hOxzWIqQI21ommeCQpT8BzrVofrZ6wfcYZ7VKFUd2p6z/5rHI9TqQDU0/6C
	rhHabrkwoKQo1cLwaaMmha1W5WO7ncs7zp/WJYqt4cuB59aClu9gyPF3eBKxg/N4HfN
	nKbGOqGklWyf4Plx2XW9/lUZjRPQ+fxaX8EwwLZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646974885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LkwxrX0TeqIfZXVxliFqmGXuZ/5JKruyoqCOIgRAwG8=;
	b=knaL69mLip7CTKnC1Uvq4foRpvb5DsYpXDJgd3P5pUVn+Cqa47APCqBQJY8k1GpW
	aBvVLGUjRoli2gqVt6RrN+JiknneqY2bajrv7d2WxM0clzrtc8QQwEHqrONIgezzGDg
	iArkBrZTfw80fuJgZuqWCT1g0n3tUzCXSU1LVYtU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f775a5bd2-8219613c-e213-4047-90df-df07b0639e46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a88e3d57cfb06c2f5bb312922a644d2b8a31e7712c309823c34dfac9144fee
Date: Fri, 11 Mar 2022 05:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646974884
