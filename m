Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645477884;
	h=To:Subject:From:Message-Id:Date;
	bh=l87NuUTeGM8557oYYWKZ2/PkxNCJtVXMcjL2n8Io4x4=;
	b=Zxmfy5D132REcOCC/MWsUsqNV/rmfD8jbRxlgVkT0AT0W4MOcv6wpZXkf/meqpLY
	oEqagPkwktRC6J0eH1hF0AvefQABh3GmWLBHohBobw4AL6dvui1yv+RELbVwBbKoACA
	Fckr5C3WU2Ic3ZiWrHk7bxMYOWDwajqK9IgrhKjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645477884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l87NuUTeGM8557oYYWKZ2/PkxNCJtVXMcjL2n8Io4x4=;
	b=NsyO/B1OSnCbRLtTQqgFPQvTjXGwhZeJZ4XUDt6GtllACgvuFruuK71ZYU1JhcnR
	rW7mBcuDanVtWWXW8NSJ1YdcvmnN/IBezCGggMMT3M3UWZXsHHyjirzhRPdTGOajVnK
	AE4/RFrUa7Rg/UhqkAw7MGTbN6HHgOuG4KhfpMYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e1ff37d-91ea8121-2c3c-4859-9c2e-277613654008-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50f6bb6dc98e37947934b4c2fde45d313d8f3bffb2e9ef83813a535344dea409
Date: Mon, 21 Feb 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645477884
