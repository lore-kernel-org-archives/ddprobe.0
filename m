Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89105139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645692685;
	h=To:Subject:From:Message-Id:Date;
	bh=L6NEipIq4SpaBL3IESsNTDlETTnhNaFQ//oCobJSh5Y=;
	b=ilUHGquS8c8TRZOFSLjqY5rq+M/srr/hNGeEbeQwRnsDGCE2Ynlaq1PqRI6pYqPT
	0pIjXiZYYTC3VUhKHbLTHCLNFN6IPTQ2ZaIhlEORplZKxVh9jpL1uznyk7R3dGQzknM
	u6PZecyaignw/wz/QjeHUs1AUB1ok34RwUhnh9r8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645692685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L6NEipIq4SpaBL3IESsNTDlETTnhNaFQ//oCobJSh5Y=;
	b=HcvJKWpgfi6CFdvs2xSd6zh56rPDCnrTp1lTIpmnxz1IoMbNpFhoLKsdX4aIWJd7
	MuaFs1wTv2gkuBudv2kUXZlMk7AyL5Y83azBWcrb/XfPeFQGtqk0rJYTrNcwBdJh+T5
	vsaWo3kxZhmVl2C91dTotIOoi8pNTLyEj3rLQ244=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2aed8a2c-f3af151a-f201-40a1-b8ac-1f04a90dd4fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2194dbb273f5134816cc3c5042d31a9c657528f0018e13baaa695ab6113fe58b
Date: Thu, 24 Feb 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645692684
