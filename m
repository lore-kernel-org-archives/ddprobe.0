Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF12723C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652175779;
	h=To:Subject:From:Message-Id:Date;
	bh=D1FqnyTQDX3GiTiAYKnpHz0RRt1qOYoPgRXI/HnW070=;
	b=mSTb49GFIrzJ6TAcLeSWFFpjGWnMZPupe7mNmMgDF2JodpYVJcTEJzLU+bBrYw0b
	4PY9qR1JydholWvw2EOt9you7vRVbcOjnFZ+FTxy/EFKTLa97nqhSc7jF6fG7GNBka8
	VSnHDJ8CWKPSZ9gfoyceXVHBpZRdPmQhy1l2lt9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652175779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1FqnyTQDX3GiTiAYKnpHz0RRt1qOYoPgRXI/HnW070=;
	b=Js8rmBTU3oqOxVF/u7zbiO331141b9ylMBoqAjvBDY9j2VrNGa+BWepG4u/yUDQG
	lV/5rmjVRmIrjodGr3KtE9QtliEWTVwZ9UwmOUYrB3mBGLQkJ1ZOVvZXuqdZMiw+tXT
	cN2MMoOm+BvHnlSpbyhVMoGoQeRndzJhVzR0Ai6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad59b5b3-c3f4db85-4764-4c55-ba4a-da4ca907cc10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2382d4dc3dc2a22bb3388cc8621e9a636bd8e0b719b87050245df62677fa65f1
Date: Tue, 10 May 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652175779
