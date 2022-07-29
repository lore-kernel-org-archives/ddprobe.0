Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6830A4400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659085852;
	h=To:Subject:From:Message-Id:Date;
	bh=7BL1sbZFGDNabceBHlIErnrhQHywcVwAYLTSUdaOwzY=;
	b=EA5qClOMYeloWsUaum37WAPklpEaLQZsHQEnX6O1FcHYCQ+fAKILu091dqapRu+r
	mIlhScLqz3YPn+JUgn9IbLIhszPgKOZVmllA341xpWc8LkGq5RmR82yybzHRGcer12H
	r913pblPURM50foq8POx5ShZF0XkANK+KdcX0sgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659085852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7BL1sbZFGDNabceBHlIErnrhQHywcVwAYLTSUdaOwzY=;
	b=NlrEpMugb/3mDXZmQqwTFb2BKnxAn1pIFW8WxB6XE7wSDNv3BTpQ7JfrCIfLgUQy
	wqiB1ndoUHibEW6Ck8ib5SvzF8N4B7VO4KIKi5Y9F5TaZNtp9y9BY2y+vVk2foNy8Pv
	PiMlyZhX6v4upUEvFaQ0/iW575l8QgHNv68ZLvZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249390f84-7443e801-6098-4693-86fd-81654aa442c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04137421f7a48ba573ad281ad7ec34bfe50073bc0a8aee3fc0bc7d349ddba2fe
Date: Fri, 29 Jul 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659085852
