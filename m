Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53C95127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646860584;
	h=To:Subject:From:Message-Id:Date;
	bh=52Oj91J4TWzfcTl1uK69l4Qk4uKso/qFnM+RzUmoCXI=;
	b=DJbqmOjo7psHAmE90QioygLnrOGmhfP5/ddiux2cxuHUzadKQxXwo4xBZukWZRbI
	etSF/C9A3DbKWKHCFyFm8ZONxtKAIqXBn5S5IEExAL01kAYdrWQdUNGwn76SL9CQeef
	A4ayB/1HO90hkIttfcyeQKlYCCEZS9vH/6OkYWy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646860584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52Oj91J4TWzfcTl1uK69l4Qk4uKso/qFnM+RzUmoCXI=;
	b=WI+TQ2BaJh8jAPjw+kQ3rxKhEsEjD3RU3l16nnX7oUflsEAEmOEnduFwTUGPkm/D
	g/Cz/yHlDQrzxDFx6wkeZPKSxxBrvPr+DjWvXMnqf6Xhq1rqpg/aLCVLI1qDIxz+drc
	q+BL4WUoYIz//XCI01IeRbwUItUXfuerG3ckziww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f708a4747-ab758d49-d913-47ca-a907-d2e5372f031b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ec0f788ae01ae589610cdb456385d076e790cc0e761d1c8af9babcd45a5a50f
Date: Wed, 9 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646860584
