Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097DA7F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 00:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653610379;
	h=To:Subject:From:Message-Id:Date;
	bh=9veHEIfw7Ep0ajG43/O0HdBloRF+U4Jr3VjNy5PMIx8=;
	b=DUm5RXn3HUykp4GTROcBHWn6XJ/02SSRitIuNIBtTg1wicDLmlYbmVM0mAvYDq9C
	fPmQ97VTIjxOzcCbOmkeKaD8ahM8JCbkGxfiM1trB11nxcdQxizOWJCQmjqDDSeFn4F
	RUMc2KTckv1eVNRFGCI8gJ5b+kiaOnxiCmWWTGQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653610379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9veHEIfw7Ep0ajG43/O0HdBloRF+U4Jr3VjNy5PMIx8=;
	b=cAz3RjZu7afHfHysVwOJwDBMOE09O1AtfbGUiR1v+n4lnkWKoBGGQWAqpvu4/ueD
	oWLZAZIp3IiGI1JcaxtmlmBSdbSOwExQBt8fgVKg0Nurt0M1S4RVi2bSsyxm5VRoUF7
	Xc5XVNVT/ghbwM7OgyCcSFvmliHIH0WGTG1EgcGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102dbf829-60b6c9a7-c80c-4333-94f9-b719ecb77590-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c27028ba95bb20c2d7a90930fb805e09752704fc8e97de70b10ba3cae61af57f
Date: Fri, 27 May 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653610379
