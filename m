Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D823B2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 21:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649022478;
	h=To:Subject:From:Message-Id:Date;
	bh=yvFrMowVPzhfD7yHnEki+s8ACDrFLFza0bgFnEANvis=;
	b=Kvsg99oOfSg3UcmDjSL762IQg0/xdIp/5F4yHtg8Yu8UrwQNx86e7Q9GUpofJu/t
	O2cw01dwvR7EMelzO8R2rp++5p5WQAvXvTb8g3R9O3j7SJtnCJnnRNjphtQQglSYRU4
	FeX2Aq3geUHEGei37tGsHCdCWwxL9mN8fX97BD2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649022478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yvFrMowVPzhfD7yHnEki+s8ACDrFLFza0bgFnEANvis=;
	b=PE6X2U9NiESc6v/F6CSmjnyWzUm82NL70mL5nTD9oyCaXo7Eq/L6bAAcocTKvpbO
	PpL350ulmZGLX802smelWNnJXXy0Ikx2JhrfkH3D702l29yXU84TwP9HRXb8ziFM1qe
	gvYWxctAWWumOJyvwjQT+To8j7OY+2tCUpo5NjMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff16627d3-7a0e3d73-aaff-4211-9d02-a62aae08fcd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d82eed73a3297b20f0afd0a1e04592fad193ffe595b0c140fae73943656eeed
Date: Sun, 3 Apr 2022 21:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649022478
