Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936952572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647759685;
	h=To:Subject:From:Message-Id:Date;
	bh=ISWOOxBY5NCx5iH59d+n873viClSkfIc6aEGiPothys=;
	b=lLjWeM5zdYxjZO+GdTDdmwaWqCqbcLshVgjyzsPKtAQKKjODwNY4alMpxJPatK0d
	ei4m+n7Wp7OKXSWHIu+o6cxrdeed1odp29bJ6UVzZdqWpEYDDNr7TKkQWVmPvLGV4XU
	VRPMU2CIj9RPaYcP2YMh/N0/oudFPZVEcZvnoBvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647759685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISWOOxBY5NCx5iH59d+n873viClSkfIc6aEGiPothys=;
	b=RrYeYA2/M1Qngrw/zl+gtNU8gjLyjNz3O2bpLpzauuVa7XFFcUte4ziVz2nGzmtE
	ey5f+O1XJYnlJSCkOu+cU7YpvFqcZxLOLs1eCeZKsdFC+TzWh8oeX1yO6or6njkSg4f
	eQTbiuNfdTfEjP9pio+Jt93jsDodc/jyX050VLf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6217497-6dedea02-266a-49fa-9aee-c5e9ee91e824-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a25d7387610330417c16e16294c36587f870be59770f96843c3a012f5e43aec9
Date: Sun, 20 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647759684
