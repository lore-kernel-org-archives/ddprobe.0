Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF42620
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 04:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649478898;
	h=To:Subject:From:Message-Id:Date;
	bh=TWSVdyjGTYtB0zk+7KzOsniUNvzgnlWAz6evLVVqbSI=;
	b=a2EqGChl1yf+XHBUfq/HLZ+64TspQkGhxdviITDMY1gCAEvLVb4eRsaj20SfxvM3
	Rvi39k0Nm1BVYlHdxf1E79JowqkJKzzEQnoMN2eFly6o1GsQ0dg1Qd7zdlVvVnOe/ZW
	JO7o6o4XM+if1LxBayH1CXLbstYgbakv19sfy9Qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649478898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TWSVdyjGTYtB0zk+7KzOsniUNvzgnlWAz6evLVVqbSI=;
	b=P/FSPdiQH9yfoPKDCLQtzefN0IpLyZnAh0dx2rP3zHD3BEljPk8q8GFqAa3x9Hbg
	TywUhOaqNe3gX/LqaWk72BYyF/Um2d524Cm8eJZW+KYxc1a5dsMF4GkXpFZCAaNJjMH
	rAqVIO83IS0y1ZYzJnz1472WIkfhm+qwlkl0rELs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800c9a926c-b4c4689f-c173-49e3-aadf-6411b01b210a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14b7261093e5cd3d5ffd79d06481d3feeb123a80e07c5182c69a6a1ca1a1093d
Date: Sat, 9 Apr 2022 04:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649478898
