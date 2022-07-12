Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8386AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657661212;
	h=To:Subject:From:Message-Id:Date;
	bh=vWou0NjwRPDLufEQ8GpbdU6S/jxWqyK4W77cBsIdxUY=;
	b=Q0xp6umu88PYG+mq0KEZXeJnLkOisH5t6krpvDAVS5vOJsFPATrcK4sqvS43qkpy
	GXUtxAOFMFoj9F+B0tS9nLwpXyWISTRf0loAMuuPdmG3mwf7YAKFZ0py5KicGhldk/Q
	nS4Zu3MRSsk/3J0AGL1Uy5DpSq3CqpxCyYi4wHew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657661212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vWou0NjwRPDLufEQ8GpbdU6S/jxWqyK4W77cBsIdxUY=;
	b=G55CfAbnF1p/deGUtKri4wQET8AijLKEec1bbgHFRC41/JoCRVaaO7BjZhdeQqlR
	FY4KWUQC3NXpOnewL5EFRvTw4+Hi1ed73+S1Vzl0ugeMpInU7xor2w+7g8ofivSgbbW
	QlOK1alW7M7dnCAA6uIil0r7NWTOq/Vq3c6yuBdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f44ec6fd-4e0f430b-8bee-4630-b82b-4f2f7b1fe6c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4741987d291ac149d284612b628733eeb576254b24ddd8a443abc65a69a13dd
Date: Tue, 12 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657661212
