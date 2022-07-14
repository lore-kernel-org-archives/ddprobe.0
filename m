Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315647E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657832212;
	h=To:Subject:From:Message-Id:Date;
	bh=VBbCE51ksEnVGhhS5fp+PXMLQLBrJQQJg3yProR4HPQ=;
	b=GqXVk0B/FyPjXnqlQ7LT8p7h/d3Yen8dSfAN5lWl41PZwYE5VPMl9un/wUAdAHi1
	PVsBhBR3NRtO/gDKDkJIpO9o9bPdQLeGQERDqoaio6m29MIs1rF3toCSZLFL1vE/9Ja
	FbHtSylqoYrZF0Uus4469OxVkRLaU0gjsxkWE+UE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657832212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VBbCE51ksEnVGhhS5fp+PXMLQLBrJQQJg3yProR4HPQ=;
	b=W84dqDoXDC8QKvzbKZeT1IL/8omVGqKoccFgIYYgXzYhjc14I6lDjRGJBTBgxBmP
	mCLSc8oUa5zh/8JMEQlpuKI/mMnPMVuByzR2sN57VmuJfKvmFviRAXzwmwJ7Z7Bj2ki
	QYXRVV9IL+RdPva4sm70Jo7ulCEperLtKbY8gCxY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe800741-5c84c3d2-5ef7-4f91-895c-5c1888e26582-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2ed5199d876d19f31233910685cff25c8ec7da9ba5c21b021de2213b7d05f05
Date: Thu, 14 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657832212
