Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EB4258E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647039085;
	h=To:Subject:From:Message-Id:Date;
	bh=2i3ngqPnQQHtQrEmZh2lM2BfLctgxBZ/BmjPUpAkiCM=;
	b=dJuXBqtcl1SozDSO4fEBySbueVJprLeVPD7QQXIys1dhCmBNoNE8gxK2lGvootmC
	4UxCBQDaKg8B81t+YoanOG7Zy2iJVyAwI4fBmAUNSA/hfkzkY5qk0sVFHD6etR9eqFK
	H9Ofbdx0hV3MzE7nKhFhDwLT7AKEBw0AW0Jmw7fM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647039085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2i3ngqPnQQHtQrEmZh2lM2BfLctgxBZ/BmjPUpAkiCM=;
	b=Jq8kFT/RZEbBY4nkGc2LXcEqP3CTsF2SfjTfSXCIXoAlHIIUiSFSrlaiZDVeF3Ha
	6TEEWiaHUNNJTOxLN0TBmCCZlpOEe89ob5gohseG9EOj5VPc8jreMPfVEgH2Hhyo/AL
	9mtHyOQPyhNmm4N4+kD1SJYyDyYCuAoYo2nfJFOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b2df8c5-246a86d3-3512-4bf4-9e0e-41415663b794-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d1e1f2f2ec450cbaf8b364dfdd4cce8236fbbad5cd94e6878671d766b489803
Date: Fri, 11 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647039084
