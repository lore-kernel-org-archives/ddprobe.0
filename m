Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AAC2C9E
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 20:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651436518;
	h=To:Subject:From:Message-Id:Date;
	bh=AUswfrRFIWquT3YLUyPr1Cy6XuJpBqPRKL87jqbCP50=;
	b=jH0QLX8Tl2LRWM1c8pi8GQkhS0KvWr32HqhZjJBsPuHLae28hDrLHSu33XkMCRAT
	EES3S3uQ/tm4xv16ajZoCjZva+MmImtmEdHgvLoxE/+vnGgfEmRkikSI+I5Ta1kzzbH
	WuFBQyTFi/dp0OIY9k97qGl/Z1/AsHeRJ+ydHK+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651436518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AUswfrRFIWquT3YLUyPr1Cy6XuJpBqPRKL87jqbCP50=;
	b=IW0fEGXbbELiRi5jQ6ki47iqgaIQo4gJ57RU6ywffCPJ+hl3oXu4WOeLyNYS07GI
	v8/V2mPs6e7slBE7T2PCwRQ7/kdfhNuQwAmTkiSXaWogOrqz9bhSrabL/18tEjESYDL
	w/gZUxSV9Gu3F4dKEKhci4jdT5g6AI3yLETGCcgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018081497ba6-94434785-667b-414a-b51a-d9e2d693e11b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5e263bc218bde4c2f290483342714bbcd11a94bb2343bc1a5b0a67bf815ed1e
Date: Sun, 1 May 2022 20:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651436518
