Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7689B20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647749184;
	h=To:Subject:From:Message-Id:Date;
	bh=OgaOXIkqp7qXa1W8nM7p2NS3FxG5NPCLPN+6cm3jaCw=;
	b=D7mKusbJe+T+YbE7F0ggoarLLLTLSxjh6LIGP31Xh8uuR8fXaUVllMPWifD6JZna
	t0oV8JlNzBnR1c1rrnKZn8GdfjRbov0t/TKxURAPXocbji302TY0PczEd097WCkzh2d
	uBOXyJ/VIXej3mD9numtDvWkr+Y+bwfng7HTJ5Eg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647749184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OgaOXIkqp7qXa1W8nM7p2NS3FxG5NPCLPN+6cm3jaCw=;
	b=d+7PhLJUtGac1mYj0jtuR2cL2N1xVjQ6p8vHPyedv1OCd+3ne1zXprD/n4QzdzF0
	IraffZss0wh53xsl5liPp+Ulg6AEcQfkrkM4Ewhz24G/7HE37CnVW7YK+6zhF7py0Rb
	dU3owaZ3lX+lO7jnnJKUFxh7Rstak1Y9RhoJEnu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5813cde-fd3e6a30-9a59-4a90-beb1-b8884d9bb13e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6b0e940613ace8649da241544bffa4e222f3c33ef2dba7fb94b7aa22099a6d
Date: Sun, 20 Mar 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647749184
