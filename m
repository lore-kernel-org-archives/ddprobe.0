Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B13218D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 15:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653923519;
	h=To:Subject:From:Message-Id:Date;
	bh=mWVkDFsJ3O1Cjko/XVyktJhiJrxkIAk9rACG1wntozs=;
	b=U1EnFwSATOtlPhslwpNsFoCOi7uBep/ve/2AYd/8SK57SFIw2tXWl6MOXOF94Nso
	c2dr9KgLf5EcbibTx51RO+rg2FmpEUbAfPUT2AD1IgbXeCJz1AmpGaIu/J31t3WQoZJ
	S+0lLSMrV07/87gFzYzzmn7PH84WEgX0FsLLlzHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653923519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mWVkDFsJ3O1Cjko/XVyktJhiJrxkIAk9rACG1wntozs=;
	b=IrkAJq1lsvwdZ1ASptC2GGJiWEDqAOWI1UIaGRbovV72hI1YU1VFknBetgjdMfep
	4MfUcunAO0bOUH6lOH9UDstpClm76A3RI01MvpNqs/LVrEGwyd/jiyiPRSG0T+R6NZB
	Njg3w8axwLojCYiNJOhqawYgKxyOqmY9RD27IX80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115861b62-3475894b-8fd2-4cde-a4e3-3cbf765753da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbac5553e552d3108afcc3d8bc72fbb6698f0f871deb75155f489fd20d55c609
Date: Mon, 30 May 2022 15:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653923519
