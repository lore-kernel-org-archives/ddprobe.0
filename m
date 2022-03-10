Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884C618D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646924785;
	h=To:Subject:From:Message-Id:Date;
	bh=1ZCptliF/7CatcxfMkIjte1PmLQJTANOZGE1Digkyxs=;
	b=Yx90PHBcx4qvH8aY8ZwCLnlSl/VaQPXavLoM27ZF9lpxyok6qNLuav2HaAFygZ/L
	U+m1xC+7JM4htPjV/6cyS45PlzGC/zg4YgonwTKe9pp3tJV8mqsjTi1l/bNYo1twG4Y
	hYRdhoA9fpN7srLWhAMK5jwhpLsMa39SplRvMauM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646924785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ZCptliF/7CatcxfMkIjte1PmLQJTANOZGE1Digkyxs=;
	b=GTnVWdEWtzxnaYI0FWhCkO9CiyqjrbNHhiW8f69/+Xi4l8lJQxKNa7SRJlCg52Vp
	IaFDCJW6cP3wDK1+lN9jfg5/dureKLlnHNCdp9RAhIDRZ1/s5uPi/DDDhAsvv2YxF0g
	zpAP3LCSW9AxHBxJDP8hTVgvPgzDVB5oVB7sYg5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f745de4a8-743738a6-71d3-4a20-86c0-bc7c0f720048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13c60eda73bca8b3bfb1bd0cae762050f66324b366d500a56fa8e3fc6c924fbd
Date: Thu, 10 Mar 2022 15:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646924784
