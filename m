Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C331841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653611639;
	h=To:Subject:From:Message-Id:Date;
	bh=lZQ9k2MkSx7MgznhbCopADjYQ3pzGpQnqH1+WL62nE8=;
	b=L40/0p3HmDWlKya1hQ3yzCITexGZuXPK+ePtI9F7iBMU/zBnu+5a/cVskgDieEt0
	4vaHes+aM9meZnWLdNfeM/MrP5hQuXBVyzSOpnSXVHzb0pYU3dIRNDPMFgxJit5jQCB
	gm4km8PCcG4ewiswAUGR/Y4pRP99hYLT7IqkeDTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653611639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZQ9k2MkSx7MgznhbCopADjYQ3pzGpQnqH1+WL62nE8=;
	b=HeE0gfbfJn/cts6WHCO+F5OmooEM6TO1/3o45UdOCh9rdAigZ4cve/EZGwx0ftV1
	6R4DsEN0R3F9hhWNSGWpYXEpXxxyacxwTd4sY+lFBO4X+OlLtFSNcof2JEEj03l4/EJ
	ufcSIaG06m//1dKvcwJlcJOQ+onG/1OgVspDper4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018102ef3260-e824ae6c-62e1-4d18-9a28-529f78606ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33fe1218d86e06c122cd23903e3084d61cb31c59561997ebbb871086555e1991
Date: Fri, 27 May 2022 00:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653611639
