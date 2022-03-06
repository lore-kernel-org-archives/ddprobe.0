Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911591FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646572285;
	h=To:Subject:From:Message-Id:Date;
	bh=oXjrOvy+0nTWeQVO/Oe4eIFotF1AdG0wNPCs15gd8jY=;
	b=l4qClEJ23HtKrMLrrMJvqBM9M0i2k9Ulcv37fQmQsm2KBS8qbNtVOUo0W3gU4dyd
	lL4opuw1ndiH0enmKf9Hg24DN/GQInaJkmLhe6y2BZ0Q42lQR9xAn83T+6W7Z0uWHId
	JfwzdEFNcyNj986CljsA0UJ7kHfKM8irjTPKJqUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646572285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXjrOvy+0nTWeQVO/Oe4eIFotF1AdG0wNPCs15gd8jY=;
	b=KPgJThFMxPbFa6GuGpCqY3/efxfXo9oAuHgr/XlR+S7Lo47eBF5jvidTX/wbbHHv
	Yil1VZ6PTA+3M+F2bnXCcRubok73I4jn4miSxdUnGea0PFVhtk0AlbC2tynJ/JHbXcQ
	tLtIlutoNqNRXJXQ6mpZQGx3vGEHCcClNJV87N6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f5b2ba8-eceb9ba5-8273-4787-be62-0b519737d9a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad0bb9689f73394190f6121f562c2a49e98151864a5696d626150757d1c7859f
Date: Sun, 6 Mar 2022 13:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646572284
