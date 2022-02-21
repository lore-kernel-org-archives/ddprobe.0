Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D45B20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645416985;
	h=To:Subject:From:Message-Id:Date;
	bh=w22mEofKKqD4e3gd992iR1xvVhn4lXP/8qyH72JauiU=;
	b=h96k9kD6uRmbq+Hw2Bijn3IPJSJxmygFhpS8CT89Ipibe6fK/UN8cxg8YEa3samh
	FReIQ7tJjpLDEbqaUKVzCxjkfZVTEi57x7j5xidoQxBTMkLC7zI+QyX47zqCcA9fHMH
	SeU0wfaDLYZq7PvCchldwTDEQSMwvXJS2GhvrJHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645416985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w22mEofKKqD4e3gd992iR1xvVhn4lXP/8qyH72JauiU=;
	b=Vf7/lBJ2iNXebr6XRMNwUbWyqOjHktO20j99biYelAI5i2iAlbBQ+xax54Pzi6YJ
	074BteaAAo2dVoMrqAByy9CrwPg3sGijRtM2E5Gp9uaJKKw55Wmy9kk0vjC34/SWFUq
	ksPW5Wg+sAd3wpTsj7GkRnMiTb2/T9sJ0BgCMOIU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a7eb110-f17833e8-b9ae-40c6-91bc-debb3fa6aff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 640bbc7de77bfd3ec5ec1baf569de464e1dc3f060915d7a69b3fc974cef8a5e9
Date: Mon, 21 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645416984
