Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB724C7D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 17:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655401200;
	h=To:Subject:From:Message-Id:Date;
	bh=5AyUm+95QTXH1Tp0CLZlEqXhP2dSXJ/768s482QI4Ek=;
	b=ecpFD1lExm4u87NPjWnOHtE5T0FuNwnO0CTKZpzY6zYejk1KENKqw2wxImdDKekC
	cBkOZ8mqnJyXTl4Qpa7Z5KOYq+hI8jp4jUjcPD3VA18eAof8+YR8SjdIKIfplzR9FwW
	fASmDqfAUuqxj9Ps1RAyyOUSleF9SxZHXyaifgNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655401200;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5AyUm+95QTXH1Tp0CLZlEqXhP2dSXJ/768s482QI4Ek=;
	b=dqG1oRZ29zIEXcBL1VHDYLdgQpqTcIn4J/1rq8derT2c0pDHx9WMaIrB/oFyUZ/H
	QaDU80No2KXsrb+/eftE83sXZmbyDAkvv+9ybgSI8aCJ+hUpnRxXNXe0YtiTod5WgMs
	D5/k7ERtVmbK1qOe5+uV5ayXs+OZb66bTuuR8Fbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d99b699-5bc2f02b-54d8-4bf2-9819-e94748a766db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fff1b6a238894dd854e48e6c2523e616cd560211f2d296b7a1fb035f068ae90a
Date: Thu, 16 Jun 2022 17:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655401199
