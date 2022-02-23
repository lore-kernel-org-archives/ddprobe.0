Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD546AD2
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645653685;
	h=To:Subject:From:Message-Id:Date;
	bh=yyj4feBPFYW1beZR5vwjsozAI0A5QIwkcf0qvzu5Js4=;
	b=mkeyJiksmoNtHy8g52yeRcwgJmbCYS/9/W4Th4h42jR0z1A1R7fKwjNbuNkkUFy4
	WeTmlHOAQPC3JHyK7kHnf3bJn/7x3v4q+XzZuA6xYZnfc6Jy+dMKZe2ylV9AV2a6jtm
	KR5DM/W5heGjNJMKYIQQT1nBYY+3Y4sa6myLw+I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645653685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yyj4feBPFYW1beZR5vwjsozAI0A5QIwkcf0qvzu5Js4=;
	b=Bio9ibbz6h1DfMS5139eXo+8hcNqjyCeqAjGYQgyYPYgWZmzAhXwuNueHddRstmu
	KAQKppeieqlonGzRS5MFbiUQq+aEROWT+wjccNwVQ3xmrF7yO5zQ66WxIU+i1E7X7Np
	D+7t+ovDwvV/bXIXQ66hjfR4NxQb7/B/9YiCbXuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f289a72a7-c0931323-4a98-4971-8013-0d1beec34bc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 823a05b7d22955e3101d68a7d33551d49a26c84e968fd15e248cc8a19f216cf5
Date: Wed, 23 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645653684
