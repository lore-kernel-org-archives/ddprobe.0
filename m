Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119A117E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 07:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653894959;
	h=To:Subject:From:Message-Id:Date;
	bh=p2NZjZrDj0f7Td2nA0sBUZHrv1ow4PA+BBUv0MvI8hY=;
	b=BV2CEYdH7Lbytm4hUofo+SBgnXjhJuDJULaUrdh6IF1k4LC0VGMHSH5wQPRWjPU/
	Ux5TdG/rPthh1t/Ub4HU7DUz6VOsCVZSRD+pRNa5zGjJGVkmWgl6Y23LKUb4ET5ktcn
	VF7HMRGdGiPCqSq3ZfXz9TccIa4Pu52IWvNYftoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653894959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p2NZjZrDj0f7Td2nA0sBUZHrv1ow4PA+BBUv0MvI8hY=;
	b=FdP7RA/IQd3Vg+I/q7FoLt+AEUHyccwSHv4yw422S2LB6NFPgjagZIiPA4+EdIyt
	lPZUgQeFtVrCGrTRLwnWNoGwb0ghCtcaqxce5JTAmgnrYXLoFay0BqAGc1/AqaEnb1y
	bc8sror6boLX7rOW5kJVEfP+qlpgm4+WMSD92+SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113d2509e-33d078ce-8435-47b3-b332-af31c3e1b5ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fc11bd25d87d59fdc242c4e671d9c360cb4196aaaee5d63c8bea8af621786b2
Date: Mon, 30 May 2022 07:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653894959
