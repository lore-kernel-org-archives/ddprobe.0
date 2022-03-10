Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821EF7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646911284;
	h=To:Subject:From:Message-Id:Date;
	bh=gfhOADqWRf/PrahtaX5FGruk+5wpFnLa+1cq3cwYhmQ=;
	b=YkoQMudJFoGCETg+JeoAwMqN1/FWPV0nCh9awlNzYS7iWqvRv2b46h09VrW8C8G7
	rhlGQ2Mbzkus1ciOrprwmyDjgHnZMlmcj0/CibCGVqeBCMAHPKMFKz3qEO5MuZpyA+y
	v5YNdywHu5ksJnJQphLF4NZv+9D/BwpYCJE+mPho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646911284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gfhOADqWRf/PrahtaX5FGruk+5wpFnLa+1cq3cwYhmQ=;
	b=VMsIYXm4sZeT+pmU7RjiX+Hbg7HBZrzq9YcEeTIZTvRlf5O9wYodIBcVJEl8yDNl
	4HDdpOI+C/RMNiQSv4oAlJdGT/3vsHYMiwbP04I3i0Oj/vLZ04HobzmAD4sFiT3Yg1X
	df0YmTkV7mPp5cOqGZ7Za9CXwYxQxktDj6EZARXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f738fe618-fe3bd736-e25b-46b7-99e0-7aa1abd5484a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 960cb3c63dfc6206d9dbfc0fff81b0b9d03ed89ad53321c598bb6485b2a96b85
Date: Thu, 10 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646911284
