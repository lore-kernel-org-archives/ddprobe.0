Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C4E4687
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653618419;
	h=To:Subject:From:Message-Id:Date;
	bh=7gVwVablXVXD2ShJmD2WZ3EeKFuJ4ZvyueSTU5xC4Zk=;
	b=cohgz5vYX4y8t4dPxMV02e9y5tDKYkvdwXjegxk+Artl9hlUEov+edFCnJG6bCi7
	ZGmhoCdSFo7lv1tUXe+S3B+Bm1maKT7WCe8d/CGUNuUgaHog3kKwrrVfSqhaVlS/zPG
	krfWiPYldSVgaEwgynwjdUKI249l/cVcefiNfgcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653618419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7gVwVablXVXD2ShJmD2WZ3EeKFuJ4ZvyueSTU5xC4Zk=;
	b=bQB9+glHAbtJfQcu0I7nVJEkHvDG0+a4kTNugpPdNyuXwCykxEHdGCdw9/3/yDeF
	EqPTB7TZLZYHHyRAsl/yQ6/x6UtkhSaIoXZfncOnp1tXMgh1B2E/75VEE/HpHU5IIV7
	RWoyQb/a9QRk1R86Pmh0sMBj7zCaJm6U8QDsklwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810356a645-ae6ac49b-d3e6-44a2-b22e-5df1c8429163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c833d7c014e91c995a04db5324f7ac0c9db1d7e4e89faf05fe76604c69e5c57
Date: Fri, 27 May 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653618419
