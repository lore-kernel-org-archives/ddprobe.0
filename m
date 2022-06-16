Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F67A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 09:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655373479;
	h=To:Subject:From:Message-Id:Date;
	bh=qgmiFYJF8A3F3wIEdpMDIJZPq05kQrOqvnCPTmsJfFY=;
	b=M5sac9T+uUrqaRhFsrIDxRr/13wP2/ZHU9pJ+RVZIvw2nRPt0v+svM4QvKe+wax9
	X38WAl2zE8LIlcVmanPFUxLuD6SwZPkF11AWVDEKQJhkYAcL84GPxo7UguLikBBnBJE
	VHx7xlEq8WB3oFv/eq5QApOryJNO/eVLBDHlFJJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655373479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgmiFYJF8A3F3wIEdpMDIJZPq05kQrOqvnCPTmsJfFY=;
	b=IdZj6wIur7+LnDP3Nvf7SngqmX4xtWE3qo4BtaPURJYdriplF80Wfn/2uRQ8i1g7
	DnzJ97gDQjIR9kCi5L3kln2X7ymX+8V5AkRSevg5RPRkRg/9zEUbDdODeVpBmZemXM4
	WdPzCJHdcV7NKFmYcGT9m98CTfbWmC/I8fiWSj34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816bf2bd5a-e0ad2457-c7f2-488f-aeb5-f1683edcfa36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1748b4555ea61614d79a818233008cdf14dd5c9d52caea76b460a54b3e1ad70
Date: Thu, 16 Jun 2022 09:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655373479
