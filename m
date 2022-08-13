Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232522F32
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660428652;
	h=To:Subject:From:Message-Id:Date;
	bh=QHBJy9NcGA0Zfz6Oid4UIAuFNKyJFKVHeHwO3qqihj8=;
	b=ZHlpsOYkx4t0A/F7VjXFo/9CHQQ8lb9XmRkYqpQ+G6BUV4xWktU/hsg4rea67a/E
	+jq+OIEUufJgjFEkm3u8MnK5Xmwn5t2tj8riF/CUALmH3KPmS1wfEFwipqgusiCiR6e
	YFFsbl2sH1jQmmE36xpDnfvos6gsf9S5yrpLfqZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660428652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QHBJy9NcGA0Zfz6Oid4UIAuFNKyJFKVHeHwO3qqihj8=;
	b=O+CCqnkGja/FoomoPWYixnGiQC7bFMe9NdeX0o30+nBSFiYfVxYoiBo5b5bL5Wlc
	jI/yIfh3YHCVqw9wB1qSz2sJi/DxhZidh9k8DwjnV5lLyfr1MTxjEpdxnMZx2ZuN5Iv
	QiarafB7SITGrBh+kYt/bEjVHbI2aYUEKVLompSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829942900f-8378f497-31d3-4bbc-9f5c-8cd9801e2c21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44b99635f0f88db9789b7f1718918a515ee1bca881addc8bcf0edc581f507f2a
Date: Sat, 13 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660428652
