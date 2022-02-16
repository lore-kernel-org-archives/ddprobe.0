Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214191844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644991284;
	h=To:Subject:From:Message-Id:Date;
	bh=wAgfH5j5OGz+e6sXJl2AHnGWaRhU005I7Vv92vBEQwg=;
	b=IoxBqsC2NkAQXdj+3R4PXfv//OKE7MBqdBDfygBdQOTLWiAN5txMyS4TJBRv4O1I
	A74JPp+r/uaQHn7RBHDydWMxsRhCPdzfudEcfs9jiAk6w45QhhCPzDTrHQuuLyjZvK1
	GFYDAQGSg2Vno0WjCFdEJDhNpt8AJ+fzpNNvG0Ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644991284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAgfH5j5OGz+e6sXJl2AHnGWaRhU005I7Vv92vBEQwg=;
	b=JxiZU8a2p4GHBRezw93CTMrgWpv7+/aKQWavmZYwnznL8m2SqI0cxNldf6AVhkF+
	fplJJga46IYsieew1FUmTgVmXofLPC9sEs6f/zBVTbDzixNBng4/FgByKdSeRvPiFXD
	/bwZ50zDf9AA7kj0BvfLK6koD/fGmen9U/B8g2Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f011f05f9-5c4dc4ef-d993-4c73-9df1-651545c21b7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0acde5b75c5bad5b63f2d289cd83ba4cdafb7bdd8f9c08e2551b977adaefa3b
Date: Wed, 16 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644991284
