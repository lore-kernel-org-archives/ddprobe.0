Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB712F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 11:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655463959;
	h=To:Subject:From:Message-Id:Date;
	bh=j9C9x+kIjyDcztWgtOCwhxyJFQ9hGUDlInSXdPqDweQ=;
	b=CpdZcgm2bix/dNObdIEjl3n2lv8d/rrG4GjPNUMKRiKyWa0Zx1IjPRtUWk7Vky1V
	Khj5zU55wVrf0KnEWQmG44YqGY9pXpInt1doyadYKO7hk6le46d5+lzwXZYgBo82HEC
	6jAdWPlIQwvwKCAeZ5KQlT/07LKlsQCmnhMhHxao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655463959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j9C9x+kIjyDcztWgtOCwhxyJFQ9hGUDlInSXdPqDweQ=;
	b=ipdLiZZKGwekEiMSyTloVzMuH7kkOxe0iuFkmhzBIdxbVN71frz0ojhnb6wv4cxi
	Vlnq2Doai7p/JGBwQqL5e2cAO7FodPP1h+4TUnI/xC8vRmFmRLzqymizQHGNPklZuPa
	vtLgGQYfJg50o0dv/fV3UhqRzHVGqukUOTDOl67w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171575ab7-fcc28b71-6ffe-48fa-be31-bf8e22c5221f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62f0dd12efcc9837ae6cfec0bf6cc5fd282a25119cb157f33ccd08f9bf35e85f
Date: Fri, 17 Jun 2022 11:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655463959
