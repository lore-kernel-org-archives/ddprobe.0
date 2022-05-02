Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AABB28E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 13:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651497598;
	h=To:Subject:From:Message-Id:Date;
	bh=G+sdehzLfeppRUtax6HYLIMWdJUsb/GKmHy+3ilhliQ=;
	b=gf5jN56ZK6swD3ZHCYlNw5bq48pETYL8ofw86b3IGYwQGL4Pp5dju4lWX0ReTbMB
	8JHwAyKtHlF3ggKNs/fksKe2Gugf6SwRStHnKNH7WJqsyQYHCej7QXF0k1XWQiqFjvi
	o1J8kgRIMjXf6go33nd0p+HNbvVSyHjnTIm8YrcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651497598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G+sdehzLfeppRUtax6HYLIMWdJUsb/GKmHy+3ilhliQ=;
	b=briXiKbxl2zjY1ya551lVJI1XpVfUy8gtEdwuT8r9xWLzEdf/j1WQCYEE85ut3cY
	i3L9OHprbDIC5Rtem8FzxH38/1DKsVgurk5AFi+CgPt7LAwCCOYOjgzMyiivbotUHL2
	nW6dJ4UK9qvb+tP3ee3O/lplqLco9EldrMpCgXqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084ed7d53-36f537a8-9cf6-4daa-a0e5-c5f828254b8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb80306b50d3e163b2f1d90294f9085ebd7189bfa3c3ac08872bc2d5189f793f
Date: Mon, 2 May 2022 13:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651497598
