Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E37838F0
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645063584;
	h=To:Subject:From:Message-Id:Date;
	bh=Dtkm34zPHClG9XWcgv2hz05BtuLxs+VfwbkrOjl8Jao=;
	b=dISgoNDeemPf2VkZoD+onHsENg5KzCwgu2Z1ckCmZrKgDOj0LjDh6PS8gmAJ9FM/
	Ut1xTvRFWV8wnDMzTL39b0l5kTslhO7Ol+8ahnw/MDGCLZM05GCnR4SC8N0D6V9HPed
	xsrQnxUTv0Mj0QQWvmS7+foMj2qEv3hTo5c8WFTA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645063584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dtkm34zPHClG9XWcgv2hz05BtuLxs+VfwbkrOjl8Jao=;
	b=Qho7QprCIOThvDhz7YW/yS8eH+LmyOyAzk2mMVryjLBxS6CuvmKO9tonkjMArwZk
	IFOsQGXOa1H2eFxGhTGfv9LHHv0i4a4cs9LJoseEAs9oTS+HLiTyeAjSkLv1fgk9YOd
	AiFXRkEEe30fB8G9Q2BluOXGAK+4HlybdO52axQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f056e3bde-7e2b9c4e-b90a-40b2-8bbc-5f635cff2135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06c66a84038053b2c91bac90310bf7a0a9428362aff8ebf08859d5604f65556b
Date: Thu, 17 Feb 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645063584
