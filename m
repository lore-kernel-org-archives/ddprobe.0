Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FD61C38
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655906759;
	h=To:Subject:From:Message-Id:Date;
	bh=T5o2rTiOKXn/tfzNcqrRP9G9D66uKX87bMN6WyW+z0w=;
	b=Nd2bGmVYMxsUMwnJXla8P3tmuMmdHhPH36ZDRorBLcvomlk90OKEPH98phwzP0b3
	FZx07LgxJsOySjuI69smAMurl+ZgUaYF/19ONHpoazIZnvJ4IfwEzCpfSx8PjGjU4FB
	iznfPcbkujZ9n9q5oYu/3aX5EurSPPIkQShzdr6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655906759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T5o2rTiOKXn/tfzNcqrRP9G9D66uKX87bMN6WyW+z0w=;
	b=PVPH0AXbCsmJHpbp7yCgh8I/yNUpRIrkQbZbtJsD0/uJ+f2bT3Vf1Z/4ckrlPbZi
	McmgRzvERg3AZgc7DTIF8ibU8IJs3qHbPMMgVAggARUf8/bH0lEj8y/Be/bJlrKBp/t
	TOG9xU7g2VjMWmEOipUhiOBNbFSvZora7i6zITlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bbbf269-141ce2f2-5d8d-4cbb-b27b-a481a00c005c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 255b7a832be55c422b4b0d43ffbd34fc38ea72f4768251311bd0d7d0d0642f03
Date: Wed, 22 Jun 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655906759
