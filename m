Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940294F3B
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645234584;
	h=To:Subject:From:Message-Id:Date;
	bh=3f+IPBrbBCX5eTRVoy6O8QPYMQnf5O/fqv6ADCMWEuA=;
	b=cb0E6fPQtWXOgSKsGQeexVKyEfg3lMZRuCRdC5FDrCy7eEXvhKihiFsuVGZx0yJy
	YE/IbOOfEmGTMlzY+Z6Zb/elVPCYMUz8kf/4xuc2ZW0HNQoCpZEx8y/7VvGRVWLLlE3
	HKWUmEZ+aC9gVV5gGXZIYFTbr29q9mdSRIhAbTGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645234584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3f+IPBrbBCX5eTRVoy6O8QPYMQnf5O/fqv6ADCMWEuA=;
	b=SyaeVmw4PbyBbxIVC/Oyh4LIwX9ejlkkdpNiVeNLmpU+aqSr4TTLiCJ8kV4CFWk2
	wernfvEudPad20U2gLNMw8hj1C9jKv1s2Q3rBs6qZeaThpoI9moOhLQRdjpErgjEhRI
	8qn0hn6EZlhBleo2H861ISWeSJ+PXQhfFnjVYbaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f9f7cfb-e03e2dbe-6d62-44bd-b1a2-8173aba3df82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f5e8a61cef2b9b5069885a66cdb49e5ebe523e2be326bace05ffee059d26dfd
Date: Sat, 19 Feb 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645234584
