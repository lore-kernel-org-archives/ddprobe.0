Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D096320F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 06:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652423339;
	h=To:Subject:From:Message-Id:Date;
	bh=OWxKRSzeK+5ggF31PKQ1uxGENx8kDrYmLlPZqwbFWYY=;
	b=HJy6R8eHBXObcUI3ezJnO+P2Kwxv1wpkwWPcCzu22nG0WKQog9NqA+4noIDspsFT
	GHTgWaaWcftewv4/QBDs3fpF2ahdcJtunGkXHLrojuQXDWGm2p9WjywjAkNexI4DJHF
	4dJRZTf/wknxMqwAEtHGrWQnVvpPnC2OyhjU9/A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652423339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWxKRSzeK+5ggF31PKQ1uxGENx8kDrYmLlPZqwbFWYY=;
	b=ThsQV9XsULkLXpmnmaskeiqQgEbVQDo6Bfa4Sx//af/kDxfkHWV51Szsk4LAfn50
	c6DCajEBCSeFun2rJ1FcinVHEI+9giCgFj0KH3GjwXh5PJlI8Uih9yp8UP0uQLkbFeA
	pDSfBa9uf99IT5sB0WutBAiGyh9XJGeE3kjyux84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc1b2d12-1eafb4a2-d981-4f84-9592-9909d8cdcc05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc617c5523ffa3f0fa5dc27a5bf2948030eb5ab87bca327ba1ce3d8c7d02d859
Date: Fri, 13 May 2022 06:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652423339
