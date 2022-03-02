Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0C32590
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646210784;
	h=To:Subject:From:Message-Id:Date;
	bh=9CtP8jaTLvvvTiabXj7cfQdOs+VfrSAE+OHm5b139nM=;
	b=OTQeR6q9rEzU4Gbym3/38M510G8/sgB1SSK4Xv19niehu/YrTNnRE/S0JJdvxGxD
	nRMIlrvAs3KcJHhMcc4iJ/D0H8w4brQVDxgmQZYRLV3WS7B3UAreGT7FawvILpIVZLm
	Thtbm1zglXJcS72mVX5NnoQR118990dV+JQcBg0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646210784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9CtP8jaTLvvvTiabXj7cfQdOs+VfrSAE+OHm5b139nM=;
	b=hEafLC1pEBaqkbPJ3oS+LfAds9xWTRjd3XzuGqmhlvkBASMqtdgbWShspimrzdwn
	mbM97atV8yUx6fSnQddVjsDVinXvXa0hE3Ciz5AZr9jfGCf/9kUxxkmFeNXkQtTza3y
	2x+CQ3yKknMrJ4s51nk0p8nJEw19cnsLRw+roHwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49cf1df4-8ea65a88-f71a-42f7-ad22-2836188a5842-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e74fc6e2588b938bc0902dfa08562d194b1b16c872b4b4d5ceac0405704d3d
Date: Wed, 2 Mar 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646210784
