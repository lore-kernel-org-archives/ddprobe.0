Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B5B180
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646116885;
	h=To:Subject:From:Message-Id:Date;
	bh=x7AWzBN++MgrLzgeoqyLEIxS3wl9ZfBacO+6INqKs20=;
	b=KNdkE5jNrMVCGoAvbbu7YoouNZi9ds50T7hz2t3Ci9IEzm3McL2KotjqOrCApF73
	BJMewkBGQkbqVhMs2Mf/dftaP/cEXlV+LDL6sPPIqZs1ouu/5eNyROvNEpu+7tc+u91
	P0SBxFwXejJSd1Eju+VqaFUY9kjPz/aQnK9Zp5R4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646116885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x7AWzBN++MgrLzgeoqyLEIxS3wl9ZfBacO+6INqKs20=;
	b=EngzIaGydqopVRLP5C8E5uBUtWoZxKzd8uct6zxHyhiocW/PINVyKpQtke8KZQ0r
	Qh6HgOizn6B5uSbPsOAcIxvAx3oy1XRgO6uYeCHKpC+zWCbqcIZprmRy5yPO6Geri5z
	iOO1DGl9jyViVKt0PixnXMlkB90MvFi73dVjpbtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44365179-ee1882f2-22f8-4918-9777-3b7dd5448fe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2229bb8c73715343cc61bbd36002e87546992714205eaf4f3b035e64b363ce2c
Date: Tue, 1 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646116884
