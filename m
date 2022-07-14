Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8794C76
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657817812;
	h=To:Subject:From:Message-Id:Date;
	bh=jgocivZ4zOme8X4KZ8mxcV2Xx5WITuohSFZDPV3frGk=;
	b=XhHCAnXv7KQmiLGNfl6nFMvTcTy4fLPLmrQGxmlVcELLs9E1A5v/ONzgtOPkqUOK
	KyMlTLYxcFCBXw1QStPW1UNQKs88JRZcsSF9cct8JXp3hvre/3JYmrXsErcfqYx4Yhh
	Bd5hgOMek+ALcGZ2M2Fxd7iTus5WhvBOI8oKyoyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657817812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jgocivZ4zOme8X4KZ8mxcV2Xx5WITuohSFZDPV3frGk=;
	b=B8AZmTObWr8zVY3+pB7KaqPUSLCM4elxefAr+Aq9sMhr9xVyMvPXyte3nPiArYvr
	PFcYDhtouY2GdkDVP3RMQVDzKzzEWPP7LV3Ddh4yFfGNqaY2xvFQA77r/TdiLhn6KV/
	E15jn4NKQqHyYOA/B3Aw3wE/7OEEWRlbZ/FIsfl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fda44d38-81c5a940-2a1c-43d3-80f0-2a0cd686ab53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7935a813c815604d25c609e7eabfe51ef33ab1d15bdc9b5c8c19e71cc4c2d783
Date: Thu, 14 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657817812
