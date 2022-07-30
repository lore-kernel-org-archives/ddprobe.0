Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532CE1FB8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659145252;
	h=To:Subject:From:Message-Id:Date;
	bh=2viPuFZjIn7C4++AVkm27FEJgrILClsFnHlJXVH4+dE=;
	b=I2re+Rl4zdoWmMA0jMhjiFADRmebqOjYG/EJPYU9s2/I3tp7mw2wZzanOuZ+8yeZ
	57MIXwZg05BvsYMoEOWsc0cvUnNo9a0a7AviWlqa6Atueyl1ZRrcZV+qpssR8iXiRC2
	MlHXMzQ3jV3AGmblh1B0ZoK8hSwjGCg6xkFAXWUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659145252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2viPuFZjIn7C4++AVkm27FEJgrILClsFnHlJXVH4+dE=;
	b=P2fmbOHZplHOmDIzoMv2KjTsYyM4ZTT4qPPuIs8bC1MNfnILO2UK9a0vfxPxXaIB
	6NLVu3pb4vu5p8KXLVg3XCpuOSpntYFxKAuuuJR+TJtz3C3G3frVk/bDfvzN+lalE/s
	PvYeG/e8GGNSP/qQuD8CNWn49GsKM5yu6lUP3Nxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824cc36efc-2d798637-a7b0-472d-b294-a1267441efe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1a27dac7056cdcbca339bf3fe1cc75789e369d84fddeafc7f50933efe5b0eee
Date: Sat, 30 Jul 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659145252
