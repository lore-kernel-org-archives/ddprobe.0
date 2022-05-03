Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EF27F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 01:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651541518;
	h=To:Subject:From:Message-Id:Date;
	bh=m1q2lEpdSOpIeQpJOFWo1VJ01WT5RFvUeIz6x0RHAbA=;
	b=Mv8iBwQwH4C7W2Y9ozHvmzdwmawFImTWOGy4nN5REZu3GbSqf3BtqcoE3KGVKUIw
	fKHen0ao1dSY2S0cGjvwUG1EHzyg0NP8iuUZB40A3dg2U6saUvSqna4eu/BdDLYF8aA
	PNX81p4MYi7xwwkGfTA64y7NFWsmr3Y03P7PyksY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651541518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m1q2lEpdSOpIeQpJOFWo1VJ01WT5RFvUeIz6x0RHAbA=;
	b=Ni/KkkZCAAhGcED+ncCQnAp3GbiEE5xeQHcNKiGVNJQJHOwACE2ib5EvXvr4wZ9K
	g5/dSTjs5DLR3zQIYqYxGRfRT/DdTCkviBybF6tdLYWB00IeAfjgT+2raBHAQBh0Rmv
	guPuN+S/NREGFzIy8gr5QHndprqgAXXm8cAfTruU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180878ba7bc-22487451-a08a-4e93-bc0d-59e10422e553-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11491e31e974a7b05203da7ff4fd934dda30660d1443c641e5e25f6229064559
Date: Tue, 3 May 2022 01:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651541518
