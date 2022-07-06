Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424C853B4
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657142812;
	h=To:Subject:From:Message-Id:Date;
	bh=tkJ0nYY2R3gWR82OopKHXaQyfY6BWgSzGFlRccREq/M=;
	b=G3oRphAsa3NOlxatEvbrwb9AkVi6YDsovBRhCPRNraos/axf8VPweUtZaWi1Vtbw
	V2LDkEND2ZQ4qy1u/dPCCDl4a3/q+EnoOJVG63r6sW/rIw1j1mF1xnzy5BvgtNggtId
	2YpNJAJEJqNaq2ZyytJS0LklPvLwhap5jPbpwS+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657142812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tkJ0nYY2R3gWR82OopKHXaQyfY6BWgSzGFlRccREq/M=;
	b=O73gBD6Mn16+qyXMt/q7zINxgKKm0gmmwL+BdOjcNPVkgQLUjphrTwTztU934R8I
	DFCvvMs8CglVpbaJsSTux+/3J+K7uYtvOnUKITKlXmZUytcI1F7F5LCM/E6ralLCsYt
	RdgpyQSa/XPr1Nlrb66Wqc/M+GsD+QtP1ckxG56M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d5689e93-3a424ae0-6616-4ad0-b8cf-031cd1a4788c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9a039f63e5323cb2f31296b4155fbfbee90d50e81ae8c076c9035179f75014d
Date: Wed, 6 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657142812
