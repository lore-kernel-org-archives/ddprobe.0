Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634EF4A01
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660085452;
	h=To:Subject:From:Message-Id:Date;
	bh=ls1jsuW3UW72GC8B6Bcp79CInAgiThzb32wBtTgXTxY=;
	b=adDVr8tREwsWUEFlJ7VRxx4ZtHvmmL/hV7y79mCJr+Zjtq5YwtEcsg4mjBP9GQUv
	AdgI9j0glbfLSNtkWzMWQzUAKyrB0XVm9w49I4o4TW7sOGYZmIvAdyMzTcFp+NRcnBS
	Suzc4HiQyYwqHUyfGllMr4y3bTS5vcmsFqEWhH3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660085452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ls1jsuW3UW72GC8B6Bcp79CInAgiThzb32wBtTgXTxY=;
	b=BmzYvW0r82YxsRIBzoP2Ydpa4jAHRBMfIGT/RCwhBzr1IPbfmmTeItbP809nMtWJ
	C/Klw4SwpHga2nvppD8ljrPq/JN0u9lSa7oAsz/zQRZBiGwOGh4zKN3lDnhscAFSl7q
	S6cbqUyxmKSysKr3EJOW4TEOYVo3j5MeVciETcgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284cdbf23-5be10d42-94eb-450f-b1c6-62468e8f2ef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8faa8528b05d14d7f6f9a27e693610fca07c2a4ab7ad8678ae411e86770f4bc
Date: Tue, 9 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660085452
