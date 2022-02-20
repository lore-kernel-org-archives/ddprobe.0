Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9031181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645321285;
	h=To:Subject:From:Message-Id:Date;
	bh=s48F1Y1LKb9S+0CDlv84hgeQS9b49w2TyDGZR6Ke1fM=;
	b=k/VnKuIvTkC8EY0LLnZxp4F9HIsUoQ0wpBTFEszcpvL3J5aNs84s8nYSib1HJQk9
	QRDF8yEnEYkWkAZqOuMVYYXWYTOw7GpouOi9Qfe1/NtGiNhLsC4lFhVh+58KfOEU1JC
	NMxOXlOwgbvIeAFj1EPAN457tEuwds4jzCuDDN1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645321285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s48F1Y1LKb9S+0CDlv84hgeQS9b49w2TyDGZR6Ke1fM=;
	b=jKY0mlbKfZJWAw+V2PPa8ZCL5JDcJo7+kQdEfRyn7KzhV4Qwg8dy0IU5CbfBqkNl
	A/Qae27VC+pBphCIaGeZUzhjgYY6X40I9CQtx2e8ght+nkld9kzBDyy4+gkD5HDR/O5
	aJhooTNC1VMt3eCEvUUQCBELRSVlZqNYjvhqInqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14ca6cb0-877655cf-db82-43ab-a6b9-6e188a72b25e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb075d351c8bbbcdde85ec8b6b232e115b9b3ffa48f828a8d65b16b1151df048
Date: Sun, 20 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645321284
