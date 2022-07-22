Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE2D33C4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658500612;
	h=To:Subject:From:Message-Id:Date;
	bh=PUyts5DKw7Z+Zv4YYYTYxQLxxLz7Xhmj5qSc+PdATJw=;
	b=cigi9askkXIu2xtIVRbDiZIZTigK1KjpAuPP2L6r8IC7HJYeaDMciMTKUIpXbyq7
	JpWmCEtENg8gxDmuLPpbpADYl6ieVp06o9xJjmx9HabpOXVWOauWrhxaEqnzR6OQSsR
	vhwT5HhbgprmY061qeGLQIk5Aar8u3oUMjgQCFNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658500612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PUyts5DKw7Z+Zv4YYYTYxQLxxLz7Xhmj5qSc+PdATJw=;
	b=Oe/mqDn73TOU8rmZCBeaCa168xrSt1QRs+Mp1AToTk2HvD5hJyQ4OMsx4j5dtxuM
	1JQtQoGlKddhBkKXrkyrF8RR2feVvjq/4u7P00rUbsdsVeJ9VUjL5qt8IeH+MKaKtBy
	Z6Hbrh5B2GlKaLarTRP95mPhMVpzCtVLmaHttvYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182265700ac-e021381d-5bcd-4910-85b7-0434f39479c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01f0ae7e5d70089f57ebe3e95cd4c1e34d68611ee606b167838c7f5299119e8d
Date: Fri, 22 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658500612
