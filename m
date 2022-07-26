Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505BC5385
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658854852;
	h=To:Subject:From:Message-Id:Date;
	bh=JHTjddMSEtvlFR2ay5F5YDfPEDb0wNAO3RSrJNC8mS4=;
	b=Kt/dm11ld+etlQ3slO6GBZEzv0jGYpI/lPIqiPyClNbUxhDKAcG0FdLddkcH4OgP
	kyYXVDSWNgK/dU5wPLqOyz70EftpvpIKe3SXkFnPKQGNkx9DyL6JvK7JhAOaZgU30kv
	Z9V/mYj2tKLZEMT1TNUagRKXJ/pnVy8d8M6L8PP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658854852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JHTjddMSEtvlFR2ay5F5YDfPEDb0wNAO3RSrJNC8mS4=;
	b=HY/hq/nfhKIASJ0j2ESjC9eDgOVXwq52uQTwExAg0kKis+zqxivQTcQSRGYi1tSI
	lfAX2+KMU/Xd6xx3MSRd8AP48tNXu+CXn3UV0uBr1FZ1Gp9LMpJ3kM3f3q3Xi7juFin
	T1qfyEr+0SEdAZTPIqJ0krql18CtB036D5aoGlgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b7447f3-6e19f429-f47d-414c-92ed-775b2efe5c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff271fbbc495ea35e27f092555e16e7570a59d6481c872f1f92d18ea9c29851e
Date: Tue, 26 Jul 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658854852
