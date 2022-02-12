Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62E67D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 20:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644697845;
	h=To:Subject:From:Message-Id:Date;
	bh=BfKBH7zKh1TWSyHgS2VrNWzTR0vdJ/O3Jd2c1QNpY/8=;
	b=BeqpeU9SNymcBML980qa38o5OBEBtyZ0h6lm/pbrt1MHWkRw4ON7ywXHjMOc88wm
	TKhmicaeCC9rSmBQg/GBkDWAtEkLCFeNDgN4qWg+InvX/uAuNDcqkkCpEynfB5ginoZ
	xHrAN76+gQE0zcx9u7PjPi+ta34jc16MWz6zJGa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644697845;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfKBH7zKh1TWSyHgS2VrNWzTR0vdJ/O3Jd2c1QNpY/8=;
	b=fF8xYDk1klQnuQBYs1lR9h7xFgUZGN2bb0QYhNOsn2d5zqczry1nBVTzNLsww29q
	MCduz1i6zdxeAzbEJw53nkd7dK24km64pGuMZzmBDIAlO0h14GRyTaoF/yQYeaMvBch
	H5yVJF4qV41HRJLgxli/VnXRzlYD4gt3cU1EQ0AA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefa17ff8-b53b1077-34e2-406a-950c-0f2c70c94fb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffb9d26c690f0e82edfbab51c492d10e66fd825554193260d78cbd895240fdb
Date: Sat, 12 Feb 2022 20:30:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644697845
