Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8305D1FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648117318;
	h=To:Subject:From:Message-Id:Date;
	bh=yqWpYMkboptL0KyyjPWYpUsl3InrIbdhdFI74wG5h3I=;
	b=KMY17KaHQclrbhtjKzcq8f8bCn+y4W+NqTtRnMbzecmowtC6FWMVAmwx6xOIkv1U
	5n+gNU6zNSiGaaLTJ1xGJ3yzHADpZqb8djDa5Hm4fsn/y7iO3J1KuAJyzRshgXpbumV
	CNAsiwCZo4b+bLwWPgAO0HtxDtLRBVyVhj5nMXMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648117318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yqWpYMkboptL0KyyjPWYpUsl3InrIbdhdFI74wG5h3I=;
	b=Y0uoaJtjccIJ2ZHu1reHOMkysve4cnVX3L5YnoW4VAv+nx854PGGaTpp1cPkn3XU
	oLO7oj+35VD3BmLARAVHQooY5Tu7APKMt/nPBAbODoOan2YVz5k3/rt18dUYO4YQc7B
	SZfZ0RtEWN4HR/4l43fxGT34/UB/zKnbs7nIa4v0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb72828e-2300a42c-18ab-48fa-a07c-7e16303b1240-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4255dd9527230837a0ac319c12001a8277910c75f2bb372691d7de57d38ccc34
Date: Thu, 24 Mar 2022 10:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648117318
