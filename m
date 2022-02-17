Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA834373
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645122084;
	h=To:Subject:From:Message-Id:Date;
	bh=9fGuGshHcYpCi5r8He4e6amqJEQBgF3dGIooGK1u8Es=;
	b=RzZ0Sx3O2V/BjuGpVPA3fN07O0ZvAESOgxQzmUQV9XY4JSSmRQoXgJBsljY4KKu6
	yVkBpiprYTeRr9THrziReormFrrab103KPmV1bC4CNqV/D018/9FFOt7+dg7jzDdbrR
	T5i5IqHRsq0r4ZXVZgZjWl12W3++oq7uXlbrJeZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645122084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9fGuGshHcYpCi5r8He4e6amqJEQBgF3dGIooGK1u8Es=;
	b=W62jnM4G1OCD+r9lr1tEAvWl6XD7HwPXaJGzitS1Bzr+vCEBCZ4JXkCuYngv5aWP
	PKTkgjFlkHG3oY0WM19YToPFIgIo1a++Z3dvlM2+qspkMyyLpVv1qR0lJK2zM52kcur
	n+tZF66XzFUo07p55S5IyJlKH825KKZ9EAk1FDRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08eadf9e-1713d9d5-6071-4f65-a344-ecd98744b503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a8799e6618bb22f068c1d81f8906c6d6e5e8dc67d43e6695d86ce215cdb877e
Date: Thu, 17 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645122084
