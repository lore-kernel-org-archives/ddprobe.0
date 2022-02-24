Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0DC7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645725385;
	h=To:Subject:From:Message-Id:Date;
	bh=esesYRbC7xabPfozr07M1FI6gyC4njubHW/YnL+rb+E=;
	b=dM5kwoKnhHfDCfP6UXucs8YCa7ayu2O/Fnjk7wN9VDpM5rjgysiBRpgkvEFfudzC
	ASzebG6IYLoZi5jjZDreFSOLCK83SU2UWJMp1gtqcf5ArJcuJtVFZI1Wn2DaFGMzSnt
	4z7HmHU97eDxgNtpvPJ2FwRK7/8ugrJ0f2FDxvhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645725385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=esesYRbC7xabPfozr07M1FI6gyC4njubHW/YnL+rb+E=;
	b=lAlN6PPxbE+kMQ7bM41hgbEmkEmh09aYhVSFQ3Zn/1BDrPtcedN7uLuN5/gvpiN+
	Enya4yDDGR0hH+kmVR7VSjaMenlDwNrAgGHY3Qn0F9+YGsOQLEAcxcCDXPgJaSxVeKb
	pwGCwZpYXo2/u6z7xbbpSb01IFX+q+W9reB262sA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ce0806e-20ca18dc-b2df-4aef-be9d-7b58b62deb26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58030aeea9e81c32e55fe8ceea3414a1c1a4c3b59d38d75b2eba30cf66c77394
Date: Thu, 24 Feb 2022 17:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645725384
