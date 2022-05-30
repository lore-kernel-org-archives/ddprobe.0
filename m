Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B6F7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 02:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653877019;
	h=To:Subject:From:Message-Id:Date;
	bh=y21T8v2VGeBdXCW6rkkuWjOefQFH+aFTqti3HHAg2Ds=;
	b=GSxvnXsCt+5v3mGd5W7u4JhdhFHrIBL1SyLCnOKnQmWTmQUoCQ58WXy43JF/edBd
	M3iEnnAddh5dVuo6TjFECsLmU2eVI7fu3ZyxaHUDCOM3bz0uajX+QI3Hn2+Ya3MK2Q4
	eLOHlrZ5VN5BAFsP9NJZaI9xmwNUlqlrV8QlA3Bw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653877019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y21T8v2VGeBdXCW6rkkuWjOefQFH+aFTqti3HHAg2Ds=;
	b=DntUmmxjVKp4RFCMKcKSLATs/T8ubEazv9LHV4WTgd+PqRmhDXR4BBOM2IgclqYl
	sST9MdDZOrPRRLIOoFW5sYLoFAzV9RrF10RudLy2fnhMZerFsqSUCNhb2sQgoV4a6Ee
	Rs3QnR2qCkt+hciOkWlVs6/vgKPOg97aU65nMllA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112c0929f-2aace9a2-1aee-4cbb-9ebc-1591ac7e86cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 021bdc5e1edb392d760f6cc1b40fa6da4677a4119a713f2b45f3e03986c2da37
Date: Mon, 30 May 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653877019
