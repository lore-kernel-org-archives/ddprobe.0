Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA343C26
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659194453;
	h=To:Subject:From:Message-Id:Date;
	bh=6R2euNB9dMd0wL1o0F6Qm0/QsCqn4mtncBt/Yfgad2E=;
	b=duAlq040sk+QvCr5IN8q6IKQnAgisN3RCwWSslmVnQbW16tLBmslugpNoT+1/arU
	/t96ph9o8IHEalSEJU6FYpGvZimB7rYpxUMgflLOvdUpOs52HoOLHpwa/svGWrpAYok
	+shkjhazeMHBCilB1ga0Yj/Bx/6EPsp0LLhTFs8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659194453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6R2euNB9dMd0wL1o0F6Qm0/QsCqn4mtncBt/Yfgad2E=;
	b=gmG+xVc59/7L3+84CP8U9rIvjKJAA6SZzl904C6CAeaXo+SJcvxrUSy6V17wrBHA
	Lryfkjck+qaLEQZaXxZC0WczVlv/56XCZXJnhBi/2a8YD/HgP5IOwhm6SYsI69Nylku
	9Sklg1z0SL6lGz9rqgmsG90GWLCOQk6jUX03S7RU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824fb22a4d-df7d109c-2dd4-483f-bdea-166346b51f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61adba7377a27a7c8d75340f7ac1151d2e91358a98783ddfd6af876201fb3a98
Date: Sat, 30 Jul 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659194452
