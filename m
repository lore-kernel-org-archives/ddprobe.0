Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045AC7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 02:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654740719;
	h=To:Subject:From:Message-Id:Date;
	bh=8LWrcamQS+usfBYh4qKby+28NvGELMZuL+ToQXoqv6s=;
	b=WUypC4fwYfS/bB07WQkEQh9cGxsWfCBTYl7YiOjRlsu+HCVy/LN5u9Iy3EfwrqFK
	M5JDToO9sy3LclMX2CpzvfR6tYs9JEjqSJewFLPFck5AixGCyss8YXqJJR4W7z+/PYp
	7kckh22d03yrse/BPe+jQGTuqNY01LutSQS/oDh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654740719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LWrcamQS+usfBYh4qKby+28NvGELMZuL+ToQXoqv6s=;
	b=LEre4uNCNIGKZOkjjFq4A48eAfQpkYxL5WorSuXhMtTzvgZ6nJvq2DY3vBVIYfNR
	sQnslc2+3likkPN9UcEoDjLfmznuDI2H97s8q9VDduPTCdQyZzlOIX4IeanJ3go1OqO
	naGHwF1m3mT+wTSlnP8iTne+QxPN/8SHjm2+YJNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181463b96b2-1d27bf1e-98a6-4213-bc5f-3f16bb8c891c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e4e8ad6b71a7a15c39986b8e3fe0b3cb533ab05561f83ecc496ce61e706cfab
Date: Thu, 9 Jun 2022 02:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654740719
