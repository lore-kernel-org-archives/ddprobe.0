Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3B829AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660817452;
	h=To:Subject:From:Message-Id:Date;
	bh=MTlXgcIV0Er6KDf9PU56wX4uW3UDzr3wZICfYaX0XuU=;
	b=WOmTOvJbMjK0ILTgRx93E2kdj3p6ZVvd7zq9l/zIZ1KhUl7k8acNIMvZrFslmoNL
	97/+hQTsiIbLY6S8DmGZ79om2YHlYacOoR+sq0gWMWmWyMbylf37MUG0Te5/8Ay0Iib
	ytjhPqtRNOlGMd5b2yGs37aWNfvk3F6ZOyd2SEww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660817452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MTlXgcIV0Er6KDf9PU56wX4uW3UDzr3wZICfYaX0XuU=;
	b=alx5n4XKCUM17RDJotlGo0BaNmIbGyojMR1b8YFz7SgXAgCvHClS0OaWFGsAaMtN
	HxJ4o4BXv9Cjy6KAX8xOD96JOVB+4JdXhCYUUEGIUrrh14XmdrijzC/b2khH/hFLSkv
	oQnWX05x+/P0c8i+Y1EvmIj43PCXKndfck+Fovno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b06f2e16-763dfec4-c26e-44df-814f-865595990d8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aebef99d2c848ad84eb0c8719761a0b8d61b6bccc5a74b9a186b22966f940b43
Date: Thu, 18 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660817452
