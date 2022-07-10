Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CD81872
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657471612;
	h=To:Subject:From:Message-Id:Date;
	bh=s24ERz/IEJCB0FVf0pN7cFQdWyAzxl4oUR+RVfk57cE=;
	b=QiMg3JmYqqtRuGFBxwkGWNpIHCmOSobobEz9L8A5uKXVAuAHFumNXrVNfgI6o3b0
	ecGyWo88euDK9ffZ9uEQV+F0WVNL/9oCT8VOAZR82YNKs8PojsIgcsTSiMo0nvH9tD2
	Y7RsNS/bglfGCJf6BOIy+evo+1n1Aso3PruDWARM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657471612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s24ERz/IEJCB0FVf0pN7cFQdWyAzxl4oUR+RVfk57cE=;
	b=K1M3wKWO4rgxNdee0pPY+194nNVbBtm9PlZAzsBfFXgTAr5wKEj8mhiQF3RZtyZU
	FHsYtikKCrwyzBwE1R37FEE+j4crTahhmq5O4x6dP5mORNGo4p2LaGnMfR1ahe3IxWa
	CpB9ysZFZdgQSHTXZab1X2tqCyR3LmB42A1x6XaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e901b56e-030c479d-5c62-4fef-9f74-50556e23ebcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e289c24dee66a00d8373a50ecc73f77c7f6767ba708c10a3bca4fd1a57e5cb48
Date: Sun, 10 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657471612
