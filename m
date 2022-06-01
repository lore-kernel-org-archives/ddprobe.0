Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C991256F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 14:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654092419;
	h=To:Subject:From:Message-Id:Date;
	bh=8wpYokVM8p0fc66d1eTM/LOv1nEw0UF/doMotMhP/fE=;
	b=XHgxnlEM0FgYXyFBTtIla+DXLl3mDvDQD75xVXfemYqjNcimU9/1ptggCZJPtfqf
	iP0XSJoMzYBdWb6OuRL0J8LDYL91FzW71CulV6xp6PzTDCcSxjAo2giGskMHK5TO9JL
	7LPTr+OFoksdmrRhnDS6krZ4QYp4DyyTyr2kc0S4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654092419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8wpYokVM8p0fc66d1eTM/LOv1nEw0UF/doMotMhP/fE=;
	b=F3jMeA3mkwc3dibbwV2emm+AsSq08mqdR7Ot9nHC97/ljZrvfGnyKcgEwuDfWB97
	x1G69lfVzNk5KzlXt5lYceRCkLucKO6t7YPnQv4EBOnXT4W5ACds2130c0iltimb94S
	Vd5I2FhFYNTYvmxWfpIuceWGConRgBbD8UTTb/BQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f9750c8-1cf9a105-7dac-46f8-9f3e-213f1ff4c62d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3eef4833621711302162b0f30b06226f73cc91312b47b74339ce5011530a142a
Date: Wed, 1 Jun 2022 14:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654092419
