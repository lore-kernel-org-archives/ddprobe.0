Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23622139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 09:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645694185;
	h=To:Subject:From:Message-Id:Date;
	bh=kMpEDIQ3eMIpbRhFPdKpnP6/AHLW2rEz/ORCyhEeOm8=;
	b=ErhQGnHkupiMdT0x5GO7mb2HVqVjgL/JxSmB+rEc0NmdcwKV22JQf2qtN9nzsUBX
	ueT17mViil6jC/CTEY/dOh+i0nghVQmFlzRtXoSuYM7TnWU6t+yVvZ+mVr01tNKHesL
	npmL9A+0ppkLIhm6ilokq3boi0LP7P1HUnze/9GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645694185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kMpEDIQ3eMIpbRhFPdKpnP6/AHLW2rEz/ORCyhEeOm8=;
	b=ky0KPT6HN5Fz0sliKNQj78Laimjh8pQQfvKVLaF4NBpvjHmfUozi1pvPqtgSv9iW
	OBzkFwNwSR5uO2WWGrWPPPeYV3Sh3VTze7golah7w5SIQyYX9yjFoNXVmH1pFcxKxJY
	H5waSUI2QYVUJvpYBIRAuGLNBbVoy1BLBJ5iQArY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b046d53-a611ece6-1b53-46a2-9037-b2185920c5a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21855373a20774545de30e78cb8df34f35a646ffca7f53031cf6a41c9d8c026a
Date: Thu, 24 Feb 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645694184
