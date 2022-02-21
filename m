Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C329A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645449684;
	h=To:Subject:From:Message-Id:Date;
	bh=3YmhHpQPLpj9FcAEtImC/O8eBgUiRFERgDQ2SOWC/XI=;
	b=eSB5+4ikVWfM28iT/c4cLZLC+YowGdmjb3Fn+N05Xy+aIUQlqk+v6dhD7YATvNYB
	XHOFQXJmr3LWDYfbrKiX8OIpHod9l87w5E8oDjiWfoihMUXIEP4k1OLGXzofRvN2z+X
	ATUlNkWdkpS7MkiZ85Pl042jhH5XUfkA0PPLXzlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645449684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3YmhHpQPLpj9FcAEtImC/O8eBgUiRFERgDQ2SOWC/XI=;
	b=LyHsLJ/PJQzTeG7+Vnlo2xBT5b87lzLcadhRgBk0kZBuONTceWmAtv1WaDxYyjwI
	/WBUvMNhZ54U8ZJ5kyqp8s++Xzg5O3Qr1XvU5+7o/3XyKB+DRq9Ldm+bscyAwYuJH3Y
	FqpkDppXpWHQK1T5MGn00VhFoVcqTzT1YIaodsUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c71a6f7-ef234d93-10db-4060-92f2-e3e35261d0c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb700ffdda235fba6c9b7b35f9206cc4963acec9abd2a3b16ef98e35ace7e16e
Date: Mon, 21 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645449684
