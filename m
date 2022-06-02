Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20276A53
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654182359;
	h=To:Subject:From:Message-Id:Date;
	bh=wWZejMhMMo56o69JAsxaO74BYYoOhpJxGxw48flKaD4=;
	b=DWImMMtiHNwbAnayl84SMAcra3C65E2ocNvKQ056K2HbzgXjLqjEoxoAhDpcVYGg
	rBLl0g+9mK3Mgxq2Sa5l7aXqS9lOit2r8/UJ24+6EAF+QOFwnIc12Ru0dIT5WiGDQ+I
	u500xGbN2fdhv9drR719N2pO2gCQMnRxybyrw3aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654182359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wWZejMhMMo56o69JAsxaO74BYYoOhpJxGxw48flKaD4=;
	b=CPhak50wn3at/ZMj1u8t0/Eogx+xf9kyC6uwGlcJsrJlWspEt6wOdQRkbd5arFVY
	L9T9IC7h3AUXsW5SRv1jx/T/RYRUgAVf0Pnymy6v3H6D0zcr5/Bqvt6g37++5Kbl93c
	DMHuNDa0I/jqNxKHfg3ofTpCO5oA95YbFHFDmL+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018124f3b12a-e4fcb46d-0874-414f-aa9f-606bd1f444e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fea7d59d578bfc3e4ecda846cbecbbbcb3bea80651161594c8307748b4c1ed92
Date: Thu, 2 Jun 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654182359
