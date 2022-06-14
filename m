Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156CD110C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 00:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655165999;
	h=To:Subject:From:Message-Id:Date;
	bh=Gyn6G/5d5Mn+ibqLtzqnflwcCEdd9KIy45KyM6YmakQ=;
	b=Iyiet4QJwrBMJPlAaYDrzgquj0ItJWR0crw38KQ/DmjS9DZXrx0P1s5kpm8g7jsu
	fj4/UroPC13PUCv/fezn9O613zb8OMQfFpTiKA1rQ4ibP2Jwb4SElJu9ByjIEwq3/4N
	m9BoG5hd76jsJeIiAtpBbYwNmDQ2Owk56UwZ4ZkI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655165999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gyn6G/5d5Mn+ibqLtzqnflwcCEdd9KIy45KyM6YmakQ=;
	b=R7fewy1/UJ0wzjZI9nUXeTbdQet1QDo5U45ugEspLxZ5BVFPlWzrWSmdD8smvbgE
	uPZDmYT/LyVu9rEsMs2eNZXyANtM0IpKBLO7B9Fzu24gbCNKBhl+9IZYUXcfpB9H7KF
	B/rLPndmPmIou6eQ3PVNI7chSam8h4tJHsuWmCeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815f94d87b-63eb17fb-0f6b-45dd-ba22-6a92a3029a5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a8aba60bef8189c9eda5ac6a86d38a27d66454dd4859c2b3ca3717792f1150d
Date: Tue, 14 Jun 2022 00:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655165999
