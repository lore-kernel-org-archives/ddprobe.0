Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E4628E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654526699;
	h=To:Subject:From:Message-Id:Date;
	bh=1L+kC9UTMLRNhQSz1+V5LzUeSPWu2tlw0ViHYlasQeA=;
	b=PIqWFZGP71j+8nYeXopiJxoeIizOAVzyNweWs63imfcMfHz/DjJyNHCc3GeOMdkQ
	wYEm19ul4KmE3TIndRd9vAUJ2k5veqDKP0/6pO55o23gygYehbstXqGLAn7qVpJMEE4
	skozbPBlFsPJbR4cwfWcvs+wwJ0WqpR0+6sBjYLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654526699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1L+kC9UTMLRNhQSz1+V5LzUeSPWu2tlw0ViHYlasQeA=;
	b=DosKPB2TDyvklf+CTsWpX7D3PmLVZVtM6zask2Tsmg0yC0R4laKMRX3JtZz+ADil
	VVcy2QlkOraMQG71cDTT4TzR03qIXRBAbLmH/rdpCMsuD6SDkZQ2FSyvsoVfQfgJ8r7
	Ej14Jm18IfON/bqWnR87iTPffPi1Ove0HA4e1O6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813979e6d6-65306b3f-570a-4071-9ab6-980ce85da44f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c43e58865a811452210b9b638dc5912d4bdbaef012fd32f953e49028044516
Date: Mon, 6 Jun 2022 14:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654526699
