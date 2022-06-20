Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7203205
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 18:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655749319;
	h=To:Subject:From:Message-Id:Date;
	bh=hx2QmdCX8LzQ2sKaPKDoXPb/5auhI4XvXki1t0aUwfg=;
	b=Z9CzxH8Z6ZZ6sQU3X06Qzk1FAdOHSKHF1J025TLlUPmirGyPvSL5RfEL3dUVx+JO
	f7qX0KjqSMTMg3WGHpV5MtntdQzdcohpjKWqgzA3rZVhIQs1M1vVWDZWDmcmmewiAy3
	XUASBmqJYEO3MhdieUELjkfjF8obisgc+dtJNe00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655749319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hx2QmdCX8LzQ2sKaPKDoXPb/5auhI4XvXki1t0aUwfg=;
	b=Ei/1lRDr5XuLi2s4rCjmZbRsaLMa81CZt0CpjgkeQSG6+xGew7YoVc58+bx8OO52
	/6Ezu81+5rJfUFxI3Upkus61LP8s8+rT33ZqAneopQy8wH0JjEk5ftXS3P3OfdHGHhb
	Nj/VbtynT6vD9hN3O+dm/DYhF95LnQ7LK1qUni8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182599a7b-4d5ca9f0-12bc-4e4e-94ff-e38df13b4ae5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: babadbf07e79078ffe40dc5bdf8d0d5987f2ba425d9c6ccd2b9093a91c7a2c31
Date: Mon, 20 Jun 2022 18:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655749319
