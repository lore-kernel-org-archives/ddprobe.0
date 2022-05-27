Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191D7185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653659339;
	h=To:Subject:From:Message-Id:Date;
	bh=ob/wfA4bjjbsV3X9U2yhmi3EOAEmhyh8k+vn2EX1Now=;
	b=hjGrXmFLqH0h+6feVDu/sRzspEHHEl+zdf2GS4uNJ/AqKPO7L5kYL5jrfvSTEGH9
	B17kc3CQ8uHuQFcLlfZlusAOcWzLomJ7tHYSRcd1SBUX7rPYqxuL/U+8QWP4ag4TftT
	NWg7mDDUjjcCu9AIe9yjD89lbU4wUtELHPrESB+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653659339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ob/wfA4bjjbsV3X9U2yhmi3EOAEmhyh8k+vn2EX1Now=;
	b=KSjTdHe/Ov3Fv7ZI3uS7fHgJ2COIHTGokVCNS4PO/+NQ+DxibHmgowodDA7EFC7/
	Nbxq67CDHRmvZ/MfaA5x4r0RGxAz99vDXmzA/+yUfizYhZmXGzaVib7iUeL9FsN3c78
	kBbMawC43kv5sOdDzMmzWNVtlPxkf6UQBvC8bzuQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105c709e9-627b1551-e138-4d41-aa23-e96c40212625-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2111cdd3a962ec1b8622bbaf114b6829846a67e300029ec126b36035a1cf454c
Date: Fri, 27 May 2022 13:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653659339
