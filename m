Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C7C3B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645876285;
	h=To:Subject:From:Message-Id:Date;
	bh=gm4tz6Ab6hjjxpw/MakpaSa3TI72usk1+Mn4f3Y1Y8E=;
	b=awiSkMEq5Bc92g0yXWK/MM0AZiIojPaCQl1HbtQKQKmeo66EoEtG0ZYmbu38bcO7
	Nlvzp2/jhd5RlKcHKjUU4ud9cIYmGlDT0GXsODTOSSwC+TgFFxG/VqQeHhSa9dhDDIL
	xJYH7P24dW2pkkVu3G+MKzH4DOORkR7bDdExvB/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645876285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gm4tz6Ab6hjjxpw/MakpaSa3TI72usk1+Mn4f3Y1Y8E=;
	b=ANc4JF/jSsIKgIQDs05ooTcV07OEnzm9hm1ve8YkmK/VdCxImZYxfuoA1dZlhSUw
	uzYcVyqss61Zlnv5K6Ueqj5Y2uy10NZtQSfy7t1DQU1y/X/CHpyoXReDaCbICnMXx5f
	VQwt1oqA+YHBXGO2XYWop6RaHP5gbEDNRb4gYggE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35df0e51-5f347e34-242e-4403-b249-86dad25f42f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faa5b8b063163b1450dc0ef3c6874e8831e2086c960eda6f2a1b1835d456ce6c
Date: Sat, 26 Feb 2022 11:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645876284
