Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212B71C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660491053;
	h=To:Subject:From:Message-Id:Date;
	bh=Jp+F8IffahrjDwWBTqv/ifMrAPrw/gQCxH+TOVBTt9o=;
	b=GxczichcblB6xsNveCkKZhGKcNxfCSpYk+oZf5mjj0N/QZzyTzHLcmah4tt5dJFD
	J7mO8My9Sax7QYvPjNVMzYDHOTtLh0OhcIG695Vt8pBneCJhtVbC/rH3nn0B6EPb3CS
	LotzE3qEOB/BFoImMYQBy6CMlzltRGn0PUqiFVqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660491053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jp+F8IffahrjDwWBTqv/ifMrAPrw/gQCxH+TOVBTt9o=;
	b=R6jzHEqi3lmwD7Vzy8oMKrpcD0NJnFsTInVaoFsWA6CFUNYsprjyGEcAdgD9+Z2P
	jajeDuGHTS63YgNbzwqJ1lu/hqHEPb6qkkbjL9UIdlv6vWM9jKW+UuykBY/CEOMa2uq
	aeh6y4eimW2j5eE7ZudK1XSXHQgmQ8Ko20Zz4RM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829cfab64d-68757ba5-f30d-40ac-9142-2fef077856ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5729f6df1074b9f9788abe9106f1bbb0b6281f9c52120f5292f72624311f891c
Date: Sun, 14 Aug 2022 15:30:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660491052
