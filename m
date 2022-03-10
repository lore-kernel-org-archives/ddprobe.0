Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA867A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646910385;
	h=To:Subject:From:Message-Id:Date;
	bh=Y1CdvcDT3d7zWe/keka7EqMxj2BNxnTp4Qfj2MSghaA=;
	b=EFBunA29YQ4AEnOFUX4IwSgJn5zBswaxqQDoCBvkM3qLlcjL8kXf8EsfN7PtJDyT
	BVcNH/UjjGMPZKY7jR915X8hQfFOGPKwAQFet6LObRmi03iJNJzgmD2PLYc603M62Ub
	nbSQH7RfB5rjPSiHzmMswhRZBAGDKHfUYhmkwQiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646910385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y1CdvcDT3d7zWe/keka7EqMxj2BNxnTp4Qfj2MSghaA=;
	b=k+ShUoKADpgOQRYPvlcGSty5+81NQ5TMX5uLo98sCMgnX85Ws4axQwaQd08acyWg
	soItBgmbQ/IiN3qoJvLYOj8gf7m3J0SXGdBHuSIP6UP5VBEyuk54B8YIq7eY/zSMTFk
	JtG3huEbUlMVWaT96J6E9gneyyx8ua+k1Jrofecw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73822a5b-16305ec9-abab-4d25-8b7d-cff842d9bb7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ebb6aa844e085c19903d247df9fffed4c55da12b6e65bbd3fdb27eac505ed98
Date: Thu, 10 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646910384
