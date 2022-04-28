Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27373EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651157518;
	h=To:Subject:From:Message-Id:Date;
	bh=TmdBVlYEvj2fV8sTddhlIvErnrMgh3o5TzgsO+XwU/8=;
	b=mwhNh48nMMZxo9oswYByfvastd31AgbfEuJgOVs9AAcVteM5dIobp/Cb6xWQfHSJ
	9dC13Aj1mDy7TWjGipAM0Xo7Dz1Qj9JdvXppI8wxDI5j6PTbCxPatNyELix/+Qq8pE1
	fdRF8XPzMslHBmlsl+nY1FzyEtUnB1jjYvOf+vgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651157518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TmdBVlYEvj2fV8sTddhlIvErnrMgh3o5TzgsO+XwU/8=;
	b=RTaw91nvajgTiVuD+p5M7mAhJjD2xICFv3U3BFsPKljzOCQGpUZA4O8dxW+yXWY/
	IR4zt0hVWWWMqmI1qEvC1edPtT9ot5/SPdFRhhoMXyX24qVOqsiH1RXZmchfoy70Yvm
	KAJKLWmOHR3LDhH0KUtrDg2t1VxiGVJFRc2YBUWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070a847c4-70fff014-ffb2-4d6b-b13e-46ab4af2913c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9489f1e34abc51017042dbbfd6b3beadef72b5621cc2687555448a646fe7c6d9
Date: Thu, 28 Apr 2022 14:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651157518
