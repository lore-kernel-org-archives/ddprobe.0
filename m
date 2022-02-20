Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D0417E
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645332085;
	h=To:Subject:From:Message-Id:Date;
	bh=t9AwFyV4KkedM0X6ljw5MYLoKid05zEE1Q5cfJ9l2G0=;
	b=Eq9hb0rKAFMWxu9XPihLx5ouKr2UFC7ksCa7wBECVfKHonfbYGBSSlGlDiumf2Q4
	zcnWM3KPSNWaOTwLKAg1GBzwWGUj3Z5qx1hMFGQdi4K7FUHZsBQUToLFbQedLHKRV+L
	sNXkfASefhkJsDE+StfotNm8hfc12aznJJOGNXps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645332085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t9AwFyV4KkedM0X6ljw5MYLoKid05zEE1Q5cfJ9l2G0=;
	b=jwhdH/pP5Yws9hhcG38+UpFXETgmVcXvgUWO/CKCzLXdhKR1IHVFwSymscMkQKUX
	VivYmi/3VOX2TOQeETfSXqUopDxnl9WlBWF3juZWX6y5FFC7LrbMtEgk++g940A0Zyd
	KUrJrtDvdu8/ut05Ihdw3PbR4cvFm3sOdrqRYQ4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f156f381f-e908445f-72b4-4c84-9de3-ce3e6ea71a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebc5c253bd204223e8e37e2ed27145e59cc1af30eec82675d04db6bddc8ec59d
Date: Sun, 20 Feb 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645332084
