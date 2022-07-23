Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093407E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658578612;
	h=To:Subject:From:Message-Id:Date;
	bh=bpt1pzq7+uz5gjfaW+6mNJS9+azy+3BAD4GswVupNW8=;
	b=JZ2LG2TXI4XAl507ZZIFJRGYr0mYjpDgyp2zjqS3PXhf5xQc36t4GpUI9kH1hBY8
	zNwukzkAenN91MCapoGXvTHxFkkRYqEfSghrFwwwFMJEMkVM9kDP0u2UD/Rxur1yXev
	cG9ipmuSxN7XhP1vwXc/lakvEO14cA4OF0XFJxnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658578612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bpt1pzq7+uz5gjfaW+6mNJS9+azy+3BAD4GswVupNW8=;
	b=IKXeG4DcJ6RArqGBXoe1gdq7p1W5i7uO4+U2ur1caFcbirgZHaq21KyhYINFck35
	lffxgcaCYIpj9aw7FPZSXEd4gd+sqdJ6n7V0gjlJBSDlPUSjQmsUu6pDTNlMBkFDuPc
	w0y4vxtbpTACJJTv/6uMFibl4eNny0Bq3NW6Vekw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822afd302e-3d0785a0-41da-440e-8041-1638a5097d10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77b393816da1861e9990cf3049d2e47614ab9ad751c0d586825eca0bb4532ec1
Date: Sat, 23 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658578612
