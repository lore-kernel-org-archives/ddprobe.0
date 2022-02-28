Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A371E4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646011285;
	h=To:Subject:From:Message-Id:Date;
	bh=8KMC5/jk1O3z7U8NycZZPdYftbzcIG6dqhDGtk5qZ/E=;
	b=BiCyjm3ENOoy2dHGjwuAOqgfgNHXclj3ixy3Y86faK4ulOY0CTT0hmbuEr8Rjnc0
	AqQaInvkMxnJAhhyfUk39v9jq/hw7LixtFMCzEbtSnrIMck/m5TmlIPA9QeYGtMJbhv
	CNXl0rJI084l1OONkrd3MG1tMmTlN17Vw/ziTSjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646011285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8KMC5/jk1O3z7U8NycZZPdYftbzcIG6dqhDGtk5qZ/E=;
	b=LIK7XEHZlP+yv7yOWWkmfKRA2QCg7xvQR8ZpETES2PSFNt7ud/zayzNx+2cNx6cV
	9bAk7SIG5mCmrzO7U64sf+aqtf5CjQHgc/Yfy2qAfmbdNMmxnAtOTHGa91bDZHbi3cU
	/XJw35ptEG4U0IMKoq42eGr2BKtwwfh9ZpbB5zlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3deafcf4-7588bbf7-3d56-4fd7-8551-d5b3fbed5a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55aa6bec2afedf25c18ac3251a995fbde1bd487847cae414fea2e0457baade48
Date: Mon, 28 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646011284
