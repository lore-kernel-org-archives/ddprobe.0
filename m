Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954A55580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645291885;
	h=To:Subject:From:Message-Id:Date;
	bh=5eYLWa9JYcGDWBM2RrZq574dq/ogKSsVk4zSDSEjHxk=;
	b=LaXKsC6By+l/UoocpBOwIeiPie/VbSdDWry7cnjBdrMa9W1BRjRXsKiPaSduPJhY
	IPChvY2y3S4fsB3+qghSBohiYRPgATMe5NvAzdTE8Eo5hLl9gzj47T/OjDvy/AJGBh2
	4BEKhZ7OlhLEyjZ/j/YbpCfpUGUYh+aaZI8XeEIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645291885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5eYLWa9JYcGDWBM2RrZq574dq/ogKSsVk4zSDSEjHxk=;
	b=Z2O0XpZOlNkEaBNdZAmHD9so/G/wTdMg0xHZ6gBS+UKKnMkjLKvLXzgrQEXir++t
	fw/xGSryLkGH0zAirSzFbvTuCG1f7uoAD4O9jXERd5Hmv+Sh+qZ432ng1xa4JIH4KwF
	k53BKvb3xUR6zltw/HF7LJlib+pZQJ2zpxX+8148=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1309d147-6daf268b-a29d-43ab-a76b-e0aa0eec320d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a50ea2ef8f295cc4ea037ba3612765edb08e1b8af8d3860e827301f678ca285
Date: Sat, 19 Feb 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645291884
