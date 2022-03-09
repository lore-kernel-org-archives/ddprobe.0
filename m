Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC9E17C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646866885;
	h=To:Subject:From:Message-Id:Date;
	bh=JMPYGhnT0DGPvmZ8ClAWtBbPjIfLzUz+/HAGH683LfA=;
	b=M8bTsRtIpQXs/BuowL5llIkD4ARe4g+EiDbz3zB1BbpacQOpN8S/2njHKyRS9oAA
	G8XppKMpa+IhEX93gihaa1EhT0t53+90Plzf2LHh6gCFhiEDu+4/rlCP4grFDQvkzTe
	/LtWRvvgbwY8JePOgxx8FVmLkXs8sve8GMiC3Tq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646866885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMPYGhnT0DGPvmZ8ClAWtBbPjIfLzUz+/HAGH683LfA=;
	b=Y5a+Vhg9jVMvNATyZWVY7lI9PBmb9c1uwhBUymV7dJZ4KIU8lN3rLAtFR2rNkmfM
	MoEdj/DUw7pWINOOYbFaKPm0UHhEn1o5ezaSmyUH/SfQ/OgncarUYtg4Qaw+RWPBIj7
	/u5DDKv/20iODmgq3+t1o8lGbdK43aMqhnxlZ4Kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70ea6966-9e8043ef-2a2a-463e-8f79-9d9a8cd15e3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db83f8d53e4aa659c6f2e2acf6c69e7f221903a0d6951197568deeafab87b6ab
Date: Wed, 9 Mar 2022 23:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646866884
