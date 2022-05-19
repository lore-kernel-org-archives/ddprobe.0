Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2E82F48
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652998139;
	h=To:Subject:From:Message-Id:Date;
	bh=VRye2c/suRErHf+Q8cBUxxIHp2+ubR/3SUDoMZ9P4X4=;
	b=bpDvcZbFi1QvZ+zKqvEzbafQnQCQ8rP8xXagc/0rVbfhA1iqzqtT6TbkpbLKGWR1
	wXLxE2ERwDhqNN5k0TwaXORDWUApMqpkP7xFm6z6hFzShyBBMmTQyfhMOtmU8MM+JTy
	VUJl6FQq3RvZEIhEA2UtWkMC/e/Ow44tyIv4zMGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652998139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRye2c/suRErHf+Q8cBUxxIHp2+ubR/3SUDoMZ9P4X4=;
	b=V3nMZkMW6GNJUmPn/t6lHuUHw7995fufh8/utv7lTE7962t3EBZitu+/EIQDm+AD
	zvDjOjFMCjH18UkJM91/sJtwBYm2rrLIzUeD2TI5CQjVbKnxCxfFX72Ez9Bs/pxUmZG
	3BG8o9ql7TY9SLfX+Akna7ETT6WZH09Sf1FxY0js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de5dede0-20830b80-3d0b-4792-a3c6-ba34b98f0f62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57164c5d0736f4bb60e8bf2b31160c37d6a54ead96734b929bdef8569c2f685f
Date: Thu, 19 May 2022 22:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652998139
