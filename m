Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67CB441E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660752653;
	h=To:Subject:From:Message-Id:Date;
	bh=xsBdKETvADWXiZuvntLvb1jOEZyJPN49Su8lr/wk7Tc=;
	b=gElvTynbcH0CiGIhkbau+FaLiX7HMpk6EhsPguuwQXfYrF/AQmYWIUZAMQduGv56
	Z/ydedtmfMkO/X1mvJBz6dz/uH9IC/8VF9EdkNes98m7GR6oxZjQAglFiYgpqSOil5Q
	SLRMBeIGb+u4+INgVya/fGZ58amMdM5XDYni6q+w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660752653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsBdKETvADWXiZuvntLvb1jOEZyJPN49Su8lr/wk7Tc=;
	b=JbMhg5a9AjruTrlywbk30GfzbrB3toJTu3nMaSZanW0ARniqRTBRQf/VH066EfVo
	6qmOO5ftYiIakyBdyUlcU3Z6HBqJuhuLoOPm4e/H4SB6qH2ESRV8aiuPChnlwIb3Jru
	AJKbBSQSLOdxtxPZZBsXMzGGgcEJ3NFIC3/8gmKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac926934-255492f2-7a7c-4c13-a18e-5cd72e7e4ed3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc36d2a977ad2b1a7e4157fdf9c65742aad4a3981864b921e29a1c396e13d2bd
Date: Wed, 17 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660752652
