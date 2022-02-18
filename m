Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF1548BD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645179684;
	h=To:Subject:From:Message-Id:Date;
	bh=8o9BUoxX8xLCbHO79G6N02PPFB9MGa8prbVshuAZZSI=;
	b=WrX4m6PKPkjCGnhcxHU30gE9vhvdL4OaF2328yPrtJMuzl0cyg95Klmn53Ivx6A6
	s6BhNPwixlQCrPVihESuDJEpfYx6C/HiLNfiuE4NQWMQp6Cjb5FHZNjkznfmbxGIwyW
	81bNP58HS8cbmZ9oaGA5tpoNA9M17DQ4ctawbPJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645179684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8o9BUoxX8xLCbHO79G6N02PPFB9MGa8prbVshuAZZSI=;
	b=hZr7IL+FRuvCJ5QUtcs7+LMtrPsaMMzSp+mwq5jlbv8WtZJBlRSZW91fXmnejHpr
	7WATbfmlJH1uSl+FpXg7IQfx6gFxMj/yvSZnUr4xAZHDQMm28QgBBmV8kuCVgGBvqxw
	pYHV1VxVBsXNrDxtTMcFwlHG3eny9bjSkKNCNkTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c59c7b1-558b90a6-6478-41b2-be16-fb45f67b0d7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 543e0fc48d026bf7fe4bac649c57e42bb06446a5738eea047ac23c3c36bb5c3a
Date: Fri, 18 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645179684
