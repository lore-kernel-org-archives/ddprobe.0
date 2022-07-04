Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D56D7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656935812;
	h=To:Subject:From:Message-Id:Date;
	bh=kxBO/ndDnXqMXXDGQK4MO1RW1/U1YVMz9rpxDMtGJsY=;
	b=V3qGUPf58QVNlgXRU7pYAWTfmS9qfgigniCxpVrcuM6RIRlGhL6sutZaJr5tJ+3k
	OIihE7XXC27WOu16VB1QSkcsVxheGCCH9zKP0s5I5kXJYLnByuU/pzDXhqw9dGLadXL
	VwAKw7IMgV47CuDrn6zVOtUQmbEn4VcxL7Lrrfyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656935812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kxBO/ndDnXqMXXDGQK4MO1RW1/U1YVMz9rpxDMtGJsY=;
	b=Ap/j29ycDTZlzo2ddUIOc4RCgIxQq8JiXldk97aGS+wCLzVlDtA9jupAIx+VQGla
	JJh3vioNbAA1TfO/YpFjjnIiGO5nSAo0/GRwJI5MnRtEhmlFETD7wSOBgmWhdZAzjMi
	+vvG5DkGHEVto+yCXM87gXEEWSOH4JMCG35YKBFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9120d03-3cab4a42-f46f-44e8-bfd0-37cc38097291-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2b410ee5afdebd29d3947b8b47156cae78bb966eeb048d7eaccb8c4f5f00039
Date: Mon, 4 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656935812
