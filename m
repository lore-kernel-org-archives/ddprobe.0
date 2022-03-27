Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0FD7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 23:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648422778;
	h=To:Subject:From:Message-Id:Date;
	bh=UKdj7IrcdUce9Nf4RoQBeiFtm+DDqQfPu0zq8qp+SxA=;
	b=G6J1XmR/+6/++Ku5eAMV9jhs3dCi7lCHgm6hljz+P8rcP0p8IY3/EL1f0YagJtAM
	gV38PtFGPKBYgD7xKKywdicltz+GjX9rz5nNTpYwTl6M1MDEC6YDXISPAxyk+GePwSv
	g6XG+AAdfQq4cPibJcIyjMe/VA3027dL5aoSrR0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648422778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UKdj7IrcdUce9Nf4RoQBeiFtm+DDqQfPu0zq8qp+SxA=;
	b=Clo7cId4Yqe2pd0WYQcfh7rzorLUueaOrT105H3yYI/c1YPUzAShe67YeqQEgWsf
	fGFSzG9lB6b/JyBBcBDmoDsu00G6fbCMaQoZtC8R7gqo4+9qwFGCE++otFLPcTKSoAX
	cAIDfE5NM3oX3ssJO/ezo1bCIwNChUHsE998bKNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcda775a6-9a7dc3fd-3116-439f-bbbb-58084d95470f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d3d0567779debd80bac5d9a0995d0b4b86a664aca194cac6ed5c9e9ebab523
Date: Sun, 27 Mar 2022 23:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648422778
