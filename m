Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0486EBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645635984;
	h=To:Subject:From:Message-Id:Date;
	bh=+ki2Ud0n4BfGZGTzRiLVMLDQ2LTo3I+ZCd/niret2h0=;
	b=JbaHTvrifnKZeIksJ7rO9NEvEvZ//oBitTsiMe6iftnGaz+tQmwabwhEanN0FhOa
	hd2j8jIN8S8Fwbvo2dZbaPS2o3UD0Zd6XR2zqvzLsf5+6wYDVERBSnN/tjO8SfYUd2M
	Mlw95jZDl9N6PowI6oBE7xTPZ9N9X8tC8RqbX7Ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645635984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ki2Ud0n4BfGZGTzRiLVMLDQ2LTo3I+ZCd/niret2h0=;
	b=Q2WQ2VIklSdyCshDO0e8Cdk+/KPSapImMvJMjLnPVb0jV1f6EfMLypq2aXXni0T2
	dyHjc3bRqzDPFiz10TiR/m6VhXmmvbZRULvS4F73uclF9eeANkN/xXTP6vIzr2QlTy9
	8WSIvE5kRsIgP8ggxg3SZj0vcoFRf9rxPvoGqsok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f278c5d7f-63411aa3-78fa-4a5a-b90b-f90b5a74eb79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 796fab440cc42b03695148cf95637bc6feb49df13d3fa8dc6f6ae2ed0bf7fa4c
Date: Wed, 23 Feb 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645635984
