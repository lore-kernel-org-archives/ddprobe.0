Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056667A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657344412;
	h=To:Subject:From:Message-Id:Date;
	bh=V1mfruEyd1U4gEw3+KwEjtOBsxXeiQs48JXArn195sI=;
	b=fl83MwWCdyVvDIOif0BMPWLDdqcAmH4LVeFQ1puteZSV3Qy9HKLQaIUvwWOy46l/
	zlqCGFNT4ZswTqHBtPrz8imywLtZ66V4qL73dgSNSph8Fkzr8uMknC+1mWkNjmrPUb1
	bLnrp3GYxp5baHCQajHOUCFrRSgolCPXMWy4KlGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657344412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V1mfruEyd1U4gEw3+KwEjtOBsxXeiQs48JXArn195sI=;
	b=Mhcei7F/yRioqvEM9FbWT37zm4hFADyTwK/1y43ANXyMYKEuik8GC7ODf0kWukYn
	lZGL2eTmtzITPzVppuep8VVDiQxJ/Wal9HkWHNwr2Sok/of903W5ZpAUmA+nJNDAiim
	19FvOUfyWPUDHl6fBXOMWGJ6aH3z59Cs8Xn6Xr6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e16ccacb-820d1238-b50d-441c-bdee-c9649a2fdb5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feecb78097905f788ce39ac80ac3a0471c51d661f298b80b44b0eb2f021242a0
Date: Sat, 9 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657344412
