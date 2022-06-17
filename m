Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B5C7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 06:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655446379;
	h=To:Subject:From:Message-Id:Date;
	bh=29UaAHLx+WSUwpt5TRyCxV6AxCJZ3ukmwrcdAB5Sw7s=;
	b=ZE+tkT/Z7necZ/peDwja77uiU17czbjVNQHdKgaazXXOu0MvRaKJp+e5jZAxCwDA
	NezpmYD3UIaAAH8R9/RESXRQeVJxyGBEV/kWf56C/3nBwS0WydgGZefMQE633M3D4xZ
	UhDrPOmQPucpPLh/UMKjR8STEH0yekdF8fh3UrU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655446379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=29UaAHLx+WSUwpt5TRyCxV6AxCJZ3ukmwrcdAB5Sw7s=;
	b=SURQhy4TayxlVbv+Vl4beNtdLnm0wue5CaQV4tAP6u1FOu0qD/iSaB+Vhlm/kOi3
	Rs9mQU4kN6xq+pC1at4jWjAzgjrNcOfeAYn1+cwd1o29gg1L6yai0wm97rctHEG2MWK
	uPRTptA7KQB/x1vCUApaikI5y/zy7FuOBzZu/vK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181704b1b03-477ca5ef-f629-48b2-a5f0-9452196bd1a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17796d6976ebdf2ce40cb4d4304fdcb45f98f0d71ecd239ba1e02c2128adadf0
Date: Fri, 17 Jun 2022 06:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655446379
