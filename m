Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C897A7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646429485;
	h=To:Subject:From:Message-Id:Date;
	bh=61FCNKjY4xrvwIPLtlewOxtV8IG++oqSxk7JC1LkPBY=;
	b=e/18FI1RqZPdt9RAW4qV40rkZyFamU1AHkqLM5d/RvZokUNH8h4sCuAy8pH0ZJRN
	pXvRY3FZKFxcd95mZUN7EVthPNEIC+gJzqln7zkvzr0whSQtkMTlRraFBUxJzSL8RYg
	n2noo8J4bajQSqWpkhc55C3JA+VoDZolenj8L6Uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646429485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=61FCNKjY4xrvwIPLtlewOxtV8IG++oqSxk7JC1LkPBY=;
	b=FOcMZHKlbU0sR6FfRjN0DPeZx0aTPmCNKkJPU1KBXZg6+ryfKumVpEa1xEReas5X
	iaWXski+WSUhRdrD6dpXjj0Y3ckvey/yM1LQO9dU0mS7ehhmZLh7YDDjnMo4x4KalUd
	rjHKRCDB56t2rRecwWYAGBqza4H+QDpe16w6GdC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56d8372e-ce0b3d52-97ae-44f6-9aba-527c6f960295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7818ca63c3f49b47bb11f7fc8a02a62904c18f54b52e0235bffb0b9022800e3a
Date: Fri, 4 Mar 2022 21:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646429484
