Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB597E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658644012;
	h=To:Subject:From:Message-Id:Date;
	bh=SXkKxeXfKXhXCTsp9WbKJ6Kv+pLFmdnGwWD5BNfyarI=;
	b=I/WMOXJJwRaiF0zqrCKHEB+TCFRiPZHlSka7gVlkotyAcrHi3UuDGmL39PqJubkx
	ujKirvpJETgwkrtjm/Gz77ARnR5/+gua/ssOQPRlP5TRJlUKu+g6Dd9I5GThhygUzTB
	8VzG7ShoS693pW0rtctr5Vd/YOlm2sORjSIpaTV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658644012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SXkKxeXfKXhXCTsp9WbKJ6Kv+pLFmdnGwWD5BNfyarI=;
	b=MV9jDUQigOQku7rlAAHFrrrUeAtgE3DshddtvAUTCJ+6ycKLtll9FJKq8x+xJ6PV
	sFkU/ZFdwJ0X+VCWQA+yxgQsHb46rNLKq8gRulPT62Im72PVRGW5hJqI1Ni9liATjal
	juneKU4DJjsxujRETSeLJx/ghQ8GIsAnAwCCvCpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ee31d0e-98c940fb-a479-4e13-996a-0abd938bd160-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8b46d03f1953f75fcdd8866748f30e763795c0f000ccfe2a8faa3b3baa40a77
Date: Sun, 24 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658644012
