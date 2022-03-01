Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5543B5A03
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646127084;
	h=To:Subject:From:Message-Id:Date;
	bh=C8UBCXCRgx53rZcJ9/k1spp4fn9Lxn+mpwMjq+CloY0=;
	b=XgrSwpkPaHrzQ3dpV7PnsSXzIzB8u4aUjOkJ5Lkd+PxU/ssh0Fn7KPujJhfDh0ZN
	gUY3ppuBdcpk3Q+pxQ9EwFOMeCdBUJM0AvWhEbACaPhutunG+R1sqYLmmibAvUwatd7
	ECkhQcO6zdFKbcamwYq7A/o3sODCPe4dDTqyX/g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646127084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C8UBCXCRgx53rZcJ9/k1spp4fn9Lxn+mpwMjq+CloY0=;
	b=RCY2km+NRBrMBP4HSdDYiBnphSXX6GUs8CX6XQJRjuTFmJZn0nIWBRdlhhgUwk8v
	ijK2kLgbg5BYe6Kk/rkdE3SxqFNmes3sdfOoSkZqFmY4kmkkuSMHK3xm6svIroWQuG+
	Lkxeg7uIToD0iqVMBP0lHcFPvJBNFpTHzFrOTWu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44d1f4a0-67c206ba-509e-47d2-a60b-9c81d5da839c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b16faabe11152d5a90726292e4e85322af1e2eca9d9442b6ea768fd4adee45
Date: Tue, 1 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646127084
