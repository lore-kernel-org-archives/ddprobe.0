Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F457E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661358053;
	h=To:Subject:From:Message-Id:Date;
	bh=oHTHr9MUwkyapWZyMMhGJ+NxUfhsagAMcCjr4ozXuDI=;
	b=RO+EUsDFAHQj5cTdoNy79/csygimh5SX2vpdSanq0zYYPzDpXK01YglYpo5EALMJ
	HfXeZxoSmb38eqvTZ7W/OhKpYeY7hBnGaFmMCMA9kvP1muPpV9oLLEquc5ZaycCnFB1
	rDmsbVCd+rPbFlSyjVzt6201l7nTPMuJ1XroLtA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661358053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oHTHr9MUwkyapWZyMMhGJ+NxUfhsagAMcCjr4ozXuDI=;
	b=MwSNBSLx7w4QoooOC72fuedP8FGt3EB1Iofj8u4Ekt67ya9s8P3Vz8EZnQZzzj5E
	6Z6njV8b01kwIeR3bQhpXmsDg2XeCdeXxy0L5JHLpGRX5IupkyTtNzqz4B20VvMeB8q
	x7snzfuvEDS0SbOx65M4Rv+ajZIeoqx3Hxgsosbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0a8156d-b68f8c49-b8a7-41c2-9637-6d78376cdd56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6255095e60d91f3cd817d6325a95113efd28d3dc7c1f525cd49744e0692d25f
Date: Wed, 24 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661358052
