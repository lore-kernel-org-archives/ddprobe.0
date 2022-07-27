Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAD410E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658931652;
	h=To:Subject:From:Message-Id:Date;
	bh=Bz1xJ/5OD6ZA0g6iOYPGgVsgsSA22wItmdHBjq9UrkA=;
	b=M4TX3uj/o8eVi1jXGDYD1fJDvt1y1tCODKShD9Xm4pEDjFUfBiHJt3zozVRI3lCy
	4tnbjESONXbJ+FHmCjJLXkMFjeIUY1z5XiuowpzwAlIPnDe9JnIXDWTCBOzWuve/BMS
	jghAYV3Y0qadWKPHx/geo7/jPZBfLRn398QqfcPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658931652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bz1xJ/5OD6ZA0g6iOYPGgVsgsSA22wItmdHBjq9UrkA=;
	b=PG+Gyrt9cOJvB6onJeKKTLQgc1CAbXDtE6b/LKi1TPMl3m8C+wr2NCthOyxEy21h
	BQzbJxcyj7kCPkoV1QwUwzTucewaSgL2lCHBIhbPgJYrXq1pzuSpE3UGNzPiE2Z7QUl
	eA2iR8Sq9DmEFQkksuJ8jp9y4e3+bZ3r085BBJCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182400827cf-99d6a020-a506-4f0c-b812-46c12ede0be8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d8ed03881ec4e4199dcb074a72e2b2b3a4934b76615e9c08da6a8dc13074c33
Date: Wed, 27 Jul 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658931652
