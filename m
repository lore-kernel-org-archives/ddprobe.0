Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BB017D0
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 04:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648443178;
	h=To:Subject:From:Message-Id:Date;
	bh=8Bscf4756MM1W35h4ciD9e5faUl2ZarbnJ6UtSx4kpE=;
	b=JtgbX6XuSEFlhs/bKuPeegdtIODTBjb8Tle9ShEDe+ap2XBo0cF7dra3s5awIq97
	bvnRvyEbwSLdN8ID4+ZP9zu7W1sAbrBjZqy9qpIJ2mayiO0c7+nsGKt9EYhOrz7o/6K
	mOjUtWBilFnpn+/x/MJZwBByiZUXJXhjTUCcaCls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648443178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Bscf4756MM1W35h4ciD9e5faUl2ZarbnJ6UtSx4kpE=;
	b=TBuwJHJkBQwiSvjVzk+6kqv53mE+JY+B+kTBS46eBMwykvVG6H2BNOMtlLQkeMlU
	NRuWRQY8N4aYp4yXD4nTGMH3As5/euuj82zFCMc5AGCUXr4BJDb4x58V8ckjv7gNh+Z
	uWt08QfZWKBs/XB9uHgfWGR2cG3q8hJ9PFwF8z3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcedebd60-6c753148-f1cc-405c-8487-0487593c55c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22db839876bebf142bb7c612020c150aa11be9dd5e37425f495b75a884724499
Date: Mon, 28 Mar 2022 04:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648443178
