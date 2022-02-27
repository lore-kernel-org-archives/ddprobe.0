Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B3D2F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645931784;
	h=To:Subject:From:Message-Id:Date;
	bh=LSKjKI0fcl5TSZedqc4MgeDSJJGaCrIE6al/MV3i7mc=;
	b=g/MPEXgv+gNWBemk/VkU9Ywesmk3D03CosrkznXeHLDGSTAJJCLpeybxMlW4m+FK
	dGhIk5Q/+p8t6txkFGLooy836wyqXMBl8iYpZoVziNkE4ZNPTQXyprCAqhpchlK7u5f
	Ev9lLjWniIxt3QJVb3K80d64vGSisPJU0bpwCKDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645931784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LSKjKI0fcl5TSZedqc4MgeDSJJGaCrIE6al/MV3i7mc=;
	b=lMdl7U4bG/YRku5O3YUhnfAtHCo5mmiLXnppog4u24tHvaJZqhhFjkbWWvt5+AmA
	h9PAmZZFpaFKNkFW1TmDmlMTNWD5iRCSb5rxCBHiQrxBCNXWFbD7ILV11DAd8lgs15H
	WwN8gOa8ym01lAEr4uSCL3LaQJVbDqIlsd+gCGe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f392dea2b-f9b1feb6-78a5-47fd-8514-2ae5505f42fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ec7fbf4ec020bd7696a7867163890c88140eb83c8482380c36799a77497c17e
Date: Sun, 27 Feb 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645931784
