Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85B77E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646958685;
	h=To:Subject:From:Message-Id:Date;
	bh=tx9b9aZj6NB5xa0le/kEMlnZPUV9c0DWsMNhib5GiLU=;
	b=Tbit/Lmj1FIpbWImRlO27LLm4iWdKKBXgqhOixSKEqt5gfrqT+3YjqRv9D1ikftH
	Cxm9lhIfCIBT1EYBJXomTGJefldZ3vvQnI6ESKd/NPOEKVbcRM5dGPTZdZdmkPo0aU2
	S/KF9c6+KcYrcNIS8AAeaHHVh5vTTmW06KRTOgWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646958685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tx9b9aZj6NB5xa0le/kEMlnZPUV9c0DWsMNhib5GiLU=;
	b=AX3DTFnQ/6aUdlylVeK2Qq1jP7/hBfqb2PuL4Yyk/PfEVH3MX1E0AnIEvc12U4Pr
	ZDzt44Jl5T2gm2yi4+d/y7oz7gb2CZXSF8BhdTXNBK2C33Lp/TNLS0MMbkvhr70KK/u
	4ViCr+AdNEvvTPsokVrplatHxEVUb4t2o03FYoI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76632a77-abf7e944-d9a2-470e-a96e-05bbab20dd4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6033396393346d8f73f784c6d2082b8cc98d9a04ddfe459c1f7b2d984a497c4
Date: Fri, 11 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646958684
