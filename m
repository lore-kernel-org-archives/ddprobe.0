Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A041C1B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648050685;
	h=To:Subject:From:Message-Id:Date;
	bh=rVuJShQ98qupvFTnH/4zEVtpo+IxT69cwcXM9dDd7fg=;
	b=VI9IPFOzbwf0MyZIAcznB5fiWdvMV9aXZxu5K6ykaR7UveOci0MRrblrPFGE7zrl
	0B79QUS/EJEScc+9MyYzjHZ/qjx1YNdavw5cET+BkTpZ240g0CEraX7PILH0N1V7zKt
	LjewZAKi732a0diqTZiPoPA1GyJyqb+x6d+XSqo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648050685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVuJShQ98qupvFTnH/4zEVtpo+IxT69cwcXM9dDd7fg=;
	b=a8nRe5V+y20q7DYAez5VBguy1Pn4B0xShHsdZ/TT/AInKk4QWB3B/YUCGHtFUD6c
	v5vgQn5rVU2RpIf3mPuUjgTd+0tcQMuHVKJM3Wd7qnamyyR/NrnKX+1vnjyBPWVRKM8
	Ine6aCM9Xs8AjAU8gjM2VuOVQB9hVrOCElivjtIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb779c372-e6e07350-3e84-4b6a-aae2-04fb1ff4bb8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55519a3574c9fe086be888bff8e6920bff2a722f5cbcae2a3e4a33fb677eef2c
Date: Wed, 23 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648050684
