Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B810360
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647009084;
	h=To:Subject:From:Message-Id:Date;
	bh=Auie8XDAfJQoid/+QRiyDGa2TTQ5qXLr8MCcRDJgkiU=;
	b=hxB0FG0SQtfWuIcd/3znSM44f76e8iD6wK1MU36lAZB2YX+edoygZrswcxEQnhSi
	qXZbp8/ut6sumh33mGc6RAXD5xhMyFsIvwQN2EGNRZKScfodfhF0Yf1v8INhZKZOKTo
	RwEsWn3y11JkN92nV5sRP3cmRXpNu1eF2Pu+8KrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647009084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Auie8XDAfJQoid/+QRiyDGa2TTQ5qXLr8MCcRDJgkiU=;
	b=iTyQkS5f3kXNJ7n7EbO6ylKtYNjPnBmmVWuQ4po6RfAFAs9oFtxQPsvA+lQXxck9
	kovJ4U+oKC/0YJTCB4vAxWKMxmVg3gxGc90nXcCMxiulvoKz5rTYq/dJEAw9NbBpsRo
	wIFEaJpNhFrvCX78We7ESY+vo+4+MHOTTIC2+eaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79643575-7909ba02-2127-4c35-b104-808f3174a5e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3b2127b030b0fa4c3226c729c24d70f08afe821025a5cf772ea7ab612b2495d
Date: Fri, 11 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647009084
