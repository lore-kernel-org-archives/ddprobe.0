Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CF07A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646466684;
	h=To:Subject:From:Message-Id:Date;
	bh=A9yltVtAOP9tt0j1sNejyeHItDgeyRCDLOVB4VmXp6o=;
	b=BYrH3XQYoXIWmCiR4yjTlh6T/2kBy+aLciRhPFg2HRxDyPIstOefK1+jFRRUhcj5
	xVC98m5RHFQxf3SoZ7+8wezBkYlHTl6ikjzmbqeR7/z3/AObLApVrz5Jqsdz24vtiHm
	P+SIZmc92rt44vS6Zfuevj2eGSHqMzqmwfKnTocw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646466684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A9yltVtAOP9tt0j1sNejyeHItDgeyRCDLOVB4VmXp6o=;
	b=JXpS4S2K2yZ/X+s/lpNyxem7FqWk+rQvIn6AnTaUw9/npKzuoNMlSO0ZdLrdYrRA
	fCUMDEr5EuWlgk+DXGyq6CBSMqmK4E+nK9K59zbCs6vrO5W0TgRNpdaCG7q0PTL/iZQ
	TuXKh2NxwpVBzE03y1/Cod/0gQRrAvN1WY4gadZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f590fd71d-89094d02-bd53-45ae-a292-b597e2c1ca4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1bbb7dcdf126dcb6c65ae03fb757fcdf5e3296a60387f260d9ce4afc10a083ff
Date: Sat, 5 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646466684
