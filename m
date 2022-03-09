Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688D015A3
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646788284;
	h=To:Subject:From:Message-Id:Date;
	bh=NFQgDmLgDtRwV7F/FnpG7WgeZk+YX6PewzoGVluKEn8=;
	b=VoXrtTd2mfsnG7W97xRkUf55MFHxmI5HhouQ/IC7XiTVz2yVHhFBqJSbuFYICyng
	s9NU2GpCuHLd6Qw+8Zx7ZkFV4/toUPZe0JHFgsqScB1W4boaqPRQJq+qQkdx3mH/8Mw
	/dpJQ0JF6Y6ZmpT+E9HAGRBXfqWHYOVkeVYJq/p8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646788284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NFQgDmLgDtRwV7F/FnpG7WgeZk+YX6PewzoGVluKEn8=;
	b=hbAZvHy7O9HCHi7h3U2aL0oF6XCib8hqJO8ZKmtsfXolaeYHxtFVCplaoMAOhYCT
	HNPhG7kZIf0Ggr5ZbnD26lULnaRkjlXOV/+YusqIwjD/6Xvo7PzTvTu+A78YgArOf1S
	MUd90fred7CC+L1rwA3BhbuA5C57Lnhu6QkvcVCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c3b1162-e0bae65d-b90d-4638-a090-462d87c8aa8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4603c8e8a1fd414d5e6c8d55a086661af363b16dd596eb6f60b5769587c28ecf
Date: Wed, 9 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646788284
