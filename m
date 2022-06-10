Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CA37C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 16:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654876859;
	h=To:Subject:From:Message-Id:Date;
	bh=gMffTq17ofk2ZPuBMaKT6f7JcuH07XxPUVNaa81Ki+A=;
	b=bRqbMItbO6POu5BEi6G9In9BDNFdwjOxqzdiHiX/gum2G4ShF8KClS2qgNuL8wXC
	1k4eOK8z5PPkPdNmgLjlsKgtameG+uoRInkgxGR48kDnHXEKJe33s5FII+1ZOizn6oU
	wseTLDFOk8OS3mY06hCtrrxPxYMWfPgx7LHTowNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654876859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gMffTq17ofk2ZPuBMaKT6f7JcuH07XxPUVNaa81Ki+A=;
	b=djHFOu1A+kmiGngSlg1a5MvElWmmsCAGqhntNBRshv+NarFONtAkOvrBLi5838Yq
	0r7rgXNbdbA544nCiy9yIaoc3CF8IuXyKa26SgNO8pGbYua0OTGX6yOYYg7AOZwe5dZ
	+7P7nCRqCoazjrv8tyChdl8ZK0vaD4uE0Z7+kMg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e58eb6f-831d45d4-57ac-430d-8fe7-217e7a0ffa2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dbc067400e3b439d61ef064a44f64a28990c5d104cb5c9dce844c29576491ba
Date: Fri, 10 Jun 2022 16:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654876859
