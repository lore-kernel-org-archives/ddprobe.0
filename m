Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C3C4436
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659225652;
	h=To:Subject:From:Message-Id:Date;
	bh=vM50ec9YZykJEcR21ld96E+gN7SEJBXNerQGIUR846M=;
	b=ORREqhHHAu+4KO1+f/V7gnCxEODeMnQUWCu1Ln2WnzFmPTqXByDP2zorL2bTNlro
	LR1vVS3oqGULz95nw5E5t3upHZIm/1GGHiFRlf/vGXQF0T3ola+M4b030y2ZCAYJB8Y
	Rrx8JU1NlEccSv8pEj8q72a74g8IOInhENiaeD6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659225652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vM50ec9YZykJEcR21ld96E+gN7SEJBXNerQGIUR846M=;
	b=L6raxWoUUP6DrtIV9aBAZ6MjyO2NqQQCTKRh7m1bwY/YUy350Um9leKWTmvm8Mdy
	GKKvPSIizfRXXI2FdWaJolpmqH+3yC6ESrr62JU77yppRaGdxPNlK+mSpGas5LMByj5
	XFmyWSpL6WU5KonfMKU7BgzJk/Pg0bn9KupTFoqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182518e3d6f-43391529-a9fe-425a-8dab-2965fe2c7894-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d98859016428a02c90fc7d6abeb3031eb71e7b17569ebb11a7556fcbec87d06
Date: Sun, 31 Jul 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659225652
