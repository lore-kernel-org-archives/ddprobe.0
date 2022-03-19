Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93681160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647714685;
	h=To:Subject:From:Message-Id:Date;
	bh=RP7kW2Xcf4auFgFT4pdcGiJBCJndUUmj2C8gsa9izM0=;
	b=OZW4b/KgmFkp44M6lrNe+xkdY8HsCx7G/liIclOswok2aJiGBn3i4VRhL2O/JIk4
	sbSkvrtjjQtDihZOLkwd/NAfrEcvjwzvqqtfivTBLfOzWKyVcVrts5AgeZHe/OuEw0o
	RERX/xYp6b2n5bweJ3F6MWHVPwVVs+NJODsw+Tdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647714685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RP7kW2Xcf4auFgFT4pdcGiJBCJndUUmj2C8gsa9izM0=;
	b=HDL5QdclJ6HbEOGP7L6Y7W5b9YhFG357JIHFOho6qhPXDnk33cfofG7TXd2YuxSV
	N8v93xrtbKRgrkvQHIK00AzoqrhhiHEVBm+aJQ42LxcuvFlXVXBo/yCGLxhZg+za6Qf
	zBvKcpzuB1DBzNZ/zDiXpNoM5depxZeHhq/ucyho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa372cf7f-b6b165a2-4e17-4a3d-8153-62e0e57ca822-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2550508fb456409ab2920ae4fd204b3a0e661eeccf5d81ce9fbddfea2aa3131
Date: Sat, 19 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647714684
