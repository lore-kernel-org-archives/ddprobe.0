Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0113D63
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 19:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652644619;
	h=To:Subject:From:Message-Id:Date;
	bh=iB1B+8pw8xil2JIXvgxCJr0333E92xvUg9Jz1N0OuBk=;
	b=H+VXn24pT6B6oRb1t4f7Fr5jDdFqiJVtYAfpNWuN0tUh/m0392ZyYhFKLxKz0wqU
	EI2J1xNoqFMLu2YhR3bD+YQz1lUpNdWNE16vJ8Df/hrwgQaGu5w7tDSJju3F9i69XkI
	G5IvSr42Bpi6z4OFNyW2n3dBHsZmX/ideplzEOK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652644619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iB1B+8pw8xil2JIXvgxCJr0333E92xvUg9Jz1N0OuBk=;
	b=htWg2Da7kPgzmCVz9quXFy9dArTpf3Jx7+i1RD5zsS6UvMN9ByHZDYnOYR2+/UI3
	IXE060eouAxSdLyT3YWcFHbvCbwGq528nMYaWNT+g/aBcGIdd+/Gc/OplCrK8ytVya4
	qBAl/XYkanMN55fjeMGkg4Y9F/C7DGQxoc69OOfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c94ba4a7-cf63ac48-324d-4d86-aa70-c5a390549687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95cde76f7e262f8a77a24515489956a5227a418e1f7ad57db2dfdde1fdae6990
Date: Sun, 15 May 2022 19:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652644619
