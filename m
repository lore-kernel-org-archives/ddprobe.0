Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F76D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656606412;
	h=To:Subject:From:Message-Id:Date;
	bh=zehC2xKgsrE3HasKND0x7LlG9EgJkhcpQxAaQnhQG1Q=;
	b=c0ud3PA8LIkQaZ5ZmqTWhXrV/BieRZ3OQZCQtfM+MxNer/YOmdbitI6iacUFj51X
	SK96o7PDt4eUt1pv56LR2Mx8+HqQ9HnKFjnzCfBZjBE0xEtKRih6VhIZaoAA3aHbEWY
	UXGRIQnM0KrejbUtkBgQv772QcFvlahBoJ7x8noY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656606412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zehC2xKgsrE3HasKND0x7LlG9EgJkhcpQxAaQnhQG1Q=;
	b=Qp2rTBArVTITDjKIyyLJYI5dxuT1zdwjev5gGDSAXB/l2sY1LBGxRfeiaGUdjD0O
	ET9UYFBo5Iok7i5IMQkzJC6dTK9PFjSeCde+YVYiJeWEpk1IQtioEG8RJVGmg1qTLVE
	3B7Qb7i+Z+mQlfT18a56iCfxiL1dPcUBcvpQ7kYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b56fce41-f43ffbc1-42aa-4833-91e9-2b8faea35ac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e81a2c94fd8d009d53fd1b91e81b71fe343c5220e44622b43fe858abf6a215a
Date: Thu, 30 Jun 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656606412
