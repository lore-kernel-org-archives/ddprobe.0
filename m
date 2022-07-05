Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB01B17D0
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656995212;
	h=To:Subject:From:Message-Id:Date;
	bh=SzH4Y2HwzZYBiEbFPUAwTHZ8VZQDIKaMWfg/pAgPR8E=;
	b=W+vWC1pISENeF5grD/NPIs8ULgSXTeiDW/Vxoke0AR8hYSyTg/JRpEzzfleLp4Wo
	rcPYq37vdpRyJ8NSL6LUkh3Zkh7lxRrwTl5ZOhOfEHDcjWQRymoyiLC3n6FWlg2Cagc
	utiAGEw8nKqTNDJlDpz+Df7XcSby2kboWdogLGr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656995212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SzH4Y2HwzZYBiEbFPUAwTHZ8VZQDIKaMWfg/pAgPR8E=;
	b=dmX02k1F9WhCNuaygUQHm3YM0LfqgWuVLyMgqNNl7yUiSY8Zx1ESxcZem78NvPhR
	NUSwOHQKfzmV/XdF2nqL/rXSiQeSw9RyAm3uD3HVFGsLcZlZgSh7D7kfWrB2/aEVREi
	GbDXemD0VDJA3ikqmsGOSm3/TM0wIAgaRltTCfCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc9c6c00-2586eadd-e870-46ed-b363-5b67f6b6673e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aa212debf14f18c26d8f1aa86dad1f2c243b2fe4a0030305a76f2f4192d5d95
Date: Tue, 5 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656995212
