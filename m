Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E41A23
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 03:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650339658;
	h=To:Subject:From:Message-Id:Date;
	bh=msnBoZmj+v7f323aIHcg3iXM79MAV7CeHLReUMfc3+8=;
	b=XPLGdqFSTDo8OnvcuKRV16txw1b5oGrI3X8+dmOMNoVpLuhCLCvfNwg8DGakBml6
	8pbYSbOA1YgvlyaL407ECIqG0MFexfP/AO/0fRB/j7+qzFSJ90saLmNfo5FvqIQHFWW
	yfQrD8XQwjNAGY7gr708agX6ZyGc1A5lhBCAllio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650339658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=msnBoZmj+v7f323aIHcg3iXM79MAV7CeHLReUMfc3+8=;
	b=Wrxm1UQkCNIUdYHYSNQWMmpxPii51z+ZQtkIpaVs7g9/qSzchUuToJZBDE3HKtRu
	wl69AOqUhRVGN0lXukTAwXq/nlCo+aWmG39mywb7oWm7Epm6RamR5KtxuXe56DIAmnz
	qhUnDfp/qjOS2g5nYnOHJMxFnxYxg8L8cPlk57g4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803fe8ba0f-56b1806f-44c7-47f1-8751-824c2f37b3d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089a8a534369b56ab8925392d83283c5da9fe109f5c6801fb5262628df10a779
Date: Tue, 19 Apr 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650339658
