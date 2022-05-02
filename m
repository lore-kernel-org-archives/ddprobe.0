Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA8C28E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 14:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651500778;
	h=To:Subject:From:Message-Id:Date;
	bh=lXFqR2fvcbYNV4cCApuXl0zDTSa+EaYUIIne1XBTkKQ=;
	b=gdrTSndQymczd7d77FsJIJ1RiksccYsezqJBSOHd9SD3MTCbvSoxIVc68KLi5qoR
	Asaa19iiLZYZVO6s1ksMU7zd7pAjsmP9ycIlS1y8BtMc8E9sXbTIp0qzOlmZOQkVdee
	khOwZ+kW6xpK2XTbj9nIRiAlHZZdLuyBgf/EBngU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651500778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lXFqR2fvcbYNV4cCApuXl0zDTSa+EaYUIIne1XBTkKQ=;
	b=E0l2Rgp0Tqh1ytYzgvC6a3+Fmsa3/Hj/MiRzt+bX3sA8PSWzr4CZoYUSWYNhiytY
	9yifHQGn4M/y/EbK1T+6Tzu2yUKfs+Ri1aLUqc/Wd8Pf50EwufwTY7qIv/WAr+EeDDa
	3TV515RjwoIj1dxQL5E74buu1fSeqCxHGjDZdSYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180851e02f5-68d3f904-5c0d-41a9-b6df-bc0f7338e5ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 808ee11670404d6844c13bc41b326edbcacd5a4ddccb6fb489db48c8492fc4f2
Date: Mon, 2 May 2022 14:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651500778
