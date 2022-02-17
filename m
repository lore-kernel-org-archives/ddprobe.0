Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABFC3B3F
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645077684;
	h=To:Subject:From:Message-Id:Date;
	bh=Oy7iTPD/fmBV513+BSKb+MvkyhWm2EJuk9+w8//9Exo=;
	b=AwJmd1brAnM3aPzKkh5nPCKo/BDIvCV5rBoJ1etnyh73Zyqsv7yYM0XipvZ2YZ2r
	zi6P9U1DaMa39/AHA6mfZ04T7ddY3+BD0WJkcjkQqpuUQTO+DozJBhVh/i9UH/6Xyxz
	oNcV0UAU8dIq0LE+8LppMrG6vpZoGbmVljTPGCLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645077684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Oy7iTPD/fmBV513+BSKb+MvkyhWm2EJuk9+w8//9Exo=;
	b=YsRbkdC8P/uPiEgLThr5k2A+87zkGa54JF1yVOL6nUsOg4xKDnD/fncSn91MMf7s
	9/zCtFY0wkSN+9xTJHLsXUEQ6/moHu2a+gX/rNICfidi5wh/5ziZokuuWr/ICxe59sr
	rQ5Bybre+dCMOXdcKh+aVWYKs4Q1BSNBE20J6noA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06456246-a563c5c0-c456-4079-901b-4a5c1c31c28b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 202e6b499f710e5b476867fc969173e5b2b3462584e6d961be577b5d8605f648
Date: Thu, 17 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645077684
