Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600917C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 06:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646289984;
	h=To:Subject:From:Message-Id:Date;
	bh=rpedBuuIyelLn2jqFKQzE+DeRMlW46pMlYYMZgVjx8U=;
	b=KAn1YmNEWAqfkfuY6wG3Zx1Iug5wYBEXV/PBZ2xL97Vyqkf0FJBQ/NbWncO/H7nH
	3kW2wqZw2mxXUsmzKBhlUXcDeZsmh4K54vduOccgGR4UhN9928DpZhyyGSoXHliKxwB
	RsobrQpF82dojQS66L8EklVZb9MkhceorhQkghGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646289984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rpedBuuIyelLn2jqFKQzE+DeRMlW46pMlYYMZgVjx8U=;
	b=YIGBGKE8xFr2vL7TcQp8kJs6r1KeQ0LWBiPYbEcezkVR/Yu9dlh5fJfqEo7VWZ/Q
	F+cWqr3nHaHTFuC2nlCRjqoHLDoY04C06CSsghCTiEFpQl0TgEL2A6LlYwHb+bVy6UE
	B7qpHVzyx7rgkWsVIYnY5vPA7Q2Nzdm2bSW78PBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4e879ceb-fce08112-2849-4448-947a-207145325b99-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f9ffb9a40fe1bda520fd2dbb1c8c08bed79f981489fda1c2fad72ef8072b78a
Date: Thu, 3 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646289984
