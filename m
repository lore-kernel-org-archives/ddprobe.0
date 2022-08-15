Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E8D3238
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660580453;
	h=To:Subject:From:Message-Id:Date;
	bh=v9iGBddZhC9L01xr8XSdlUvEoakcReQrar/Mhj/oWNA=;
	b=LqWh5u+/cOEZwueuxh5TGkImlhIdoBdBzdpFeEVIY5I/X49F8zWwLGaZdDOrzOOh
	mw41hUE9aBVreuv+BxcTpGO2ahYry8t8DM77r1YepEwsNiJBR26kv2bWJrCT5SC+ud1
	4VjwwmgqX8/bI/xsPLm34K8Tjhn0YDPQ+xA041mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660580453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9iGBddZhC9L01xr8XSdlUvEoakcReQrar/Mhj/oWNA=;
	b=SFigU/xUrC3F9cxGNocZ30II+HBP3SGZ89mu/FH3dnwroMbFXm2bbwPijYg3IMmy
	0h6KC/07R7BVItqjOUcRdIfqQuD7eMzzMHciI+71TU9aplkgyz8/HSTgJRIewb5NWck
	C+N8Xutm2SJuYA9ttdt/hWzEL1cDexao4ZDJm3AA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a24ed92e-88870110-45ce-42f0-91b5-86bec83f6113-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8b3a8689d34828d9bd4a72558ff33224a039196e597a54c98076c9c025020be
Date: Mon, 15 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660580452
