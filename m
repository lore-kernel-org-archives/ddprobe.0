Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DEC1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656010012;
	h=To:Subject:From:Message-Id:Date;
	bh=WbKfafZ/IJpv3+VdpBwTyjkHE+FplSgAbiDGfPN481A=;
	b=kzLknpqMVpK8Uf/+wfRrKYViQsoxVu+B4DonjsL9BPt5Qc/WHJPqnkdzbCrw3XUl
	ZopW0SnxYDqiG5QXypYSchHBt/Qj0/y5de/YlHPnLH2XUv37v/dVBKMXZVR35qih3ib
	uYN1YZxNTnweII3FF34GjIDcLdC94jvDwuthRelk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656010012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbKfafZ/IJpv3+VdpBwTyjkHE+FplSgAbiDGfPN481A=;
	b=g4v/zL9fVJvyckx6pPQzaUwaSzjZssRF60G1eu/kgUnJD91+gZlvOmLhxn84VEXL
	FpNB6WfDtdrqQv9nBDQSmMLm9z7VFQZpIOKEwp25ybDAEmkzKwBtMe0BHP97cNJzlbX
	EutvMWZGg16CnopimwnXh/s6UqESsxAtyPwuLZIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191e3768d-460b4529-3083-41d6-ab4b-7e38efc05495-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7da5dbe95d6ce16bba56c04385b73abbf28a9f0c87899d3b2397797282e9e07b
Date: Thu, 23 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656010012
