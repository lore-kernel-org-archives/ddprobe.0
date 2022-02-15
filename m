Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DDB41844
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644967884;
	h=To:Subject:From:Message-Id:Date;
	bh=fuhyXym3B2luQ/sLB4V5eQzgxbwsrJIMdL1W/hXAxV4=;
	b=FmXNeA+SVSLebFUyH4bhvdp2Tq9Dvn6MZC9BDnwJA0fDPvuazE30VMWzDj8eyxXr
	bio8gIv3FztUnxBSh17YtdkK1c4cp9LziX/edKHboES3z0+kp9grr2DVGxYm94PCQSS
	zRv59pt7r9EC3BG4CUH51VDbwOqHfsef3ETWHtPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644967884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fuhyXym3B2luQ/sLB4V5eQzgxbwsrJIMdL1W/hXAxV4=;
	b=hcsylB8Sw9J08sU1B1twDX4z7Clho8olZZEYtq3SL9ca36+G4pmRfknWykiWQi/U
	b6QC/sEzNkeuLHHmKEPjMxsnLnujpGSTcsxIrQtkyUUIJIFZWp5DVsux+uCx2Yl0JnM
	PobsKf3ZMFLExs0yetOEkjLi9XXB8JrUbi9hkuOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effb9f7d9-409836f6-c8b8-4e34-b252-c61d057b9d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623ddebcdd4bd4114644c268202686004f2e344b16c27e495adc73bb2c3bc2ca
Date: Tue, 15 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644967884
