Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F72215C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646076685;
	h=To:Subject:From:Message-Id:Date;
	bh=mRVWovqmvIKRmiH+nfmqTwFIYhMgpeOkFly1QZD87SA=;
	b=NwKcEtcebi5Hc/9v50Dds8z0RhhfHg6iNxrOjJHznGC6BdiE6+Gz2uPCcwmvLNd2
	bjRVFidZSu9dPjtEYNqSyZc+hj4eL07zNncGU0e/D6aXwzj2WXgAiuBZVP0zrnW5uOj
	+qfqxYpnlWtTax3vwGbDfXkiGQAzdVm+d1q4jfRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646076685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mRVWovqmvIKRmiH+nfmqTwFIYhMgpeOkFly1QZD87SA=;
	b=QKSrMkhVcWprJKX4NF524D1DgFnPOiQagUeSzLINn6g+4fSeg50DEdz4lPpkZSq0
	kkqitCYwllPlul2pf3fpBhgfyuy/gOnZ3ZQDr3zjrdUNZQEOAGrfudi0TUn0vlxya0E
	gvssZgTrnLn2zyf5XQLSYIUB7xVHRsIOTOLr+Z60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41d0e9ca-4dbe4f40-dfb0-41b3-a3c9-009c3fa76215-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a22cccc5fe9d8cdda342fc906739947e51a396242b7facf56f4acb47d5349c98
Date: Mon, 28 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646076684
