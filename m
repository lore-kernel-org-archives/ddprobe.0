Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EC9369
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659595852;
	h=To:Subject:From:Message-Id:Date;
	bh=PJR1utup0KWeHCULaha5fUWyq+StE7iA35J4+5mHeus=;
	b=gIQdqnQQwgfPadHywGCTk51phdM+0qLJapiQcPDbA0faOfL2L0/bTKRJ8BsjyGVy
	nQi8aT/1xOsdzvCDd3oXDTJRmfaG+KjtMjpdzFVf9U57VFrvxvs5EKaij448M8Kf21x
	xALVkxIfCcYSz09q+rtpss+SxbhPFvAdVUO5mBY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659595852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJR1utup0KWeHCULaha5fUWyq+StE7iA35J4+5mHeus=;
	b=kPHnc7oGxhTrPt9EwsLoS94AIuFeR3/dB6yqddEdReaCQe102QzqRKcWNNibp0HY
	Spmq+JcCfEFKO7C3utLL0Joe+RrLI8YpQXCS/FnfWr8cIdDDcivhGrZ2X8CBB8wDN4n
	/TanNx+XBKuY+gwHLhbGvbaUdet9VVmp2E42dvHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182679f0b21-d79652ca-0a9f-4cee-bde8-f7b7dbf6cd5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc2c9d11c325fb1f19d063d03c7e9689bcdc972de9eb94fd597ed14b41422e46
Date: Thu, 4 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659595852
