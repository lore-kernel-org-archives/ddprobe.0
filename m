Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A55EA3D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661234452;
	h=To:Subject:From:Message-Id:Date;
	bh=tLQ0jxpod9/nfrmz62XjXBhpfTYw4N3h3OQep33oN7g=;
	b=KEaOM7+4o2DSAaH5F7gz0I5f0c+gPuL2FaD8tmJ3T6cVqwpbPsPvvFDNaD0t7EsD
	JHBnxhX5K7xIjNFvAwpWuHnMLTiEXX9l69d2beNeBh8rMsPBkNu05P31LzKKsdK10f9
	4arq0lfKoc0d+ypAZb8esIeKkRRkgpGIxORkwZ0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661234452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLQ0jxpod9/nfrmz62XjXBhpfTYw4N3h3OQep33oN7g=;
	b=Bd7H8g7phn0ztRYkrxOV02CaTohgEXUX1eab5sBTUaly8/vc9qoldIT0p6KnKRlw
	6MJtaPJHUNofJSLdzRwEbtj+tP6epSrn04qfMCxf2nOGZ/f8/cXklSWyQ/yS0/xfgOZ
	1kArJdrhot59P8N5lPcBUITiddcW4lUDT29RaXUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c94a1878-1bfb65e3-72fb-4366-954c-a4ae5e305934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f83b609c3f52265b242168d4f0f81c8d37a51aa946c9fdc6e87aaeae549c706
Date: Tue, 23 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661234452
