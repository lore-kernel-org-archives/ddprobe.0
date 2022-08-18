Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6C54683
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660844453;
	h=To:Subject:From:Message-Id:Date;
	bh=HcphS5FF6zPwV8p2zH2F56qcLBhTG7OuiknYOOhXiH0=;
	b=hFgf3Tx4nImJVhN8qTOeLMrgqhYrPKVxXv5rosBf30OuTdQTZ6nUJ2+x8cIpk8h/
	OC9+0MQtNUE9FJ5Q++0Ck1MToO/GYuMTFizVqYnpzoDyehJNGJ1dGyifWQo/fUYBcXa
	TdDTEzxkktS3B9nGHsgzuk9p0rzA/0WxjdUqMjD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660844453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HcphS5FF6zPwV8p2zH2F56qcLBhTG7OuiknYOOhXiH0=;
	b=k+sjjKa0XcQW4UlhDpmLOIaDbb/D9rraVBS/ILnhvo7MGTF3SK/kLM7dSvkgYxT4
	TttU0UbBW1BevUjj4C+RInn2tcdeP7Uz+wwPvH0PNYS+59hQma6iRL6zkDXrWslL9+b
	b+EjhQ+ACx+FRu5xOsqtb3/MyTxLBQ9XLdRZFa3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b20b2ac2-1047f944-ca27-4fe7-9eca-1470491bc9fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a641db3301b6902ac68e3f8853c560e014fdb282503611cb280b93e2ae311a53
Date: Thu, 18 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660844452
