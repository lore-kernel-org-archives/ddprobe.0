Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3427B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 23:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655681579;
	h=To:Subject:From:Message-Id:Date;
	bh=zKJc3xBXWlJ9P/bdIjnchM/7/buZSAckY1hqqtc0TNc=;
	b=lm2jjbgXOO8lLHOkDZITdRNECc8GFlIrdEVfNM24oP8h8ahDfnIex35dKyr49hDc
	gXVX/SB1Dfuwj/3s0AYhed/FKzU9Jme5PIYefswDzvYDRFPVpQmON4TkZmKKJrtvfSO
	39UEUMRQ101wRvntDIVlMmrbkzcIagXh3fzORjw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655681579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKJc3xBXWlJ9P/bdIjnchM/7/buZSAckY1hqqtc0TNc=;
	b=POf1INPezjynAVXLbbEtzqweb2E0EpJomeZZqQHI1nZ87mFQWMLQ3QLQZL6uubcq
	M2zzfuIpBiKDesjOSI4vQ14yG2CcravNJ8VlsVMp3oyzX55UkVTMdIO2NG73/IQqnZp
	RC74obLE5zVe5GKb8r90rhM5XXfPQeKPWi+a/pxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e4ff914-9bbaf667-5e2b-4f30-b2c9-f54ccf67a109-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4452836dceacf408dbf812ea897e2c9551ede45522dabb69759c5c1af232a5dc
Date: Sun, 19 Jun 2022 23:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655681579
