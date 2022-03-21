Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA59F6144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647897085;
	h=To:Subject:From:Message-Id:Date;
	bh=3zVnNkDlkaRtQgujR8/P6bDMY8bZxTlPggD37QwIWLE=;
	b=cuLnKV4hC6dhtT2zpN2CWQEhOZcfZIDUT9XMyCOaQhWuaRgOL1I9AscTZ/wsSzS9
	X5T/XsTeDK7eS7xz/WSLbVOHahPKCWTNagYTIhhP59rR5PIup5yUm1OzC64D973GaYu
	2lIgJJe/q8R9bsheHPFebdyuCBcaXTkFJYKyI224=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647897085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zVnNkDlkaRtQgujR8/P6bDMY8bZxTlPggD37QwIWLE=;
	b=kPsvbHRuG+PRxVom9cmAV4wT4u0YGPWBFmV5L6cvv+UIm2KQR+fyqeCCZcwbcyii
	jChpr/lQpbTPM+EfafOPUWSShDPdF2lab1+nLKPeDshczsz82qIDgggOFlNBDkt5+zX
	urG35Io81CNLe1oXkZaG7Dm39b7vsq0eb+Rc9Sho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae520339-887f21ee-2d39-4d6d-8220-463d661eca32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f37f16b98a0e10d3ad7a2243c217c5c76dfdbb65674c8848800ebbefe079d61
Date: Mon, 21 Mar 2022 21:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647897084
