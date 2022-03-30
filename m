Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF82F39
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648673818;
	h=To:Subject:From:Message-Id:Date;
	bh=Szd1XU3M3Y5ASBlOoydGPRt7l6zXyPN1T3TYtRMhBsk=;
	b=aOaF10W2u0DpudnZrcKXDrAhJgtv/p06mpPa9VejjIkRcMex3fJw3WYrXZ4clfkj
	S1Y95FjHsrQg9k+/2Ld5V3CQrGkepoED4+mrQXtbfvP35OxRUWwbTu0VaQJfJCof0kg
	Dm2pUMtmoCDquiVQaJQpOGxqh3PVTcQbmmm98ElI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648673818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Szd1XU3M3Y5ASBlOoydGPRt7l6zXyPN1T3TYtRMhBsk=;
	b=JJoTxppchrceARbXVxLJsmLyqpUd+UtDfsLGkiVaw87yShkA+bQzHwTD5MMC1j6R
	iG3afHTA1KB+2g0O/puRh6wgS3n7bbsnOO56b3jn8+LC++1uFyc36WAQ24INNRfQfy1
	rXfRAcN+8HyzHBNTKyVJtU93GDIrVDlsU6RbXunY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdc9e06b5-0f375654-7af8-4ed8-83f2-4a8acb7e5a67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f27182174e1928e38a7cb1ddc26073128db5fc5179cb753e0484e6e9109907e
Date: Wed, 30 Mar 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648673818
