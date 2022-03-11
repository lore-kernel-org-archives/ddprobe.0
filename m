Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642677E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646984184;
	h=To:Subject:From:Message-Id:Date;
	bh=47r7Wpv86aHRJZ4IUfiKcOlmtAWB+RVjJ6PLBO/VgV8=;
	b=ZJoUq+WUUgjcFLmWgDUL758dEya+xLc1UKuB8//qfRFkGS1iQ5SJZ8XLRumdJ8iI
	eQ4CGFJCxVq/f9PIkhdIMlff/uTXrPAOnsknqRiNtfPGSJSMYXXiG+D2TU3EZYm7lJW
	lUY4uhk3PmOVCPHPiYQpfDE9h5vk96wDrK+qGssM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646984184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47r7Wpv86aHRJZ4IUfiKcOlmtAWB+RVjJ6PLBO/VgV8=;
	b=QzaMNnReZ/WMTvV6+CvbHT34Ale2KvoOsIZOF3wnys2FO2XZBh2j6ab60JwkPeiO
	90GN5uHWEJR1n+gCT81XXtwQ/o70NHBraKfXxoXN0yeNKONSbWmiBs/UiBLnx9XJ8kS
	ketsWmCuJthjWWafandIq26apZvRhXs6McJoEiq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77e843d2-546998d1-1c78-48c9-af88-4c889f82876f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6274ef735424ee51c8c8ff66f9356110b39b4b54cb47eb0e67a26aba078d800a
Date: Fri, 11 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646984184
