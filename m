Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1750A7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657779412;
	h=To:Subject:From:Message-Id:Date;
	bh=4puiAkdYF19Rn5ap82rYvmG+fzspGFjVOFaA+q8jjiQ=;
	b=lZcyjLM1rTmMZCPvFpbJe+ADdf0kd5cQ2Y3T5xErtp/jtjMX/5dZLnyfVWTrtKww
	7eY/9Z5/DdZkVw/Uf45MaE6Y80s7gPnd6e7N0IUYs6a3OD6Mo4t151Y8YYoujzDwOqU
	FGpXffkPahJXvdmXpctiwWAtwYQfAlCw2q/Y0Yk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657779412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4puiAkdYF19Rn5ap82rYvmG+fzspGFjVOFaA+q8jjiQ=;
	b=N/60G0uwp836V4L+QdnxaYxD5voLu99Q8ZO1XAiKOfxxSKtmZoozAlVfNvr5rt+L
	dOILhtuheqx9jNBQw3pgk93VwYFN6xTC33YtiS/U6DhQ2DZ/dMK5lLdrXAYP52iZLZq
	Ow+kgwmX/jvZMmo5jmQSLBUNdQAsqp+S4hhZLicI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb5a5d4d-63ece566-ee71-4f41-82ce-f523a4c9c380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 278f9805a88282dd6920c4b5092e55874d2f31282fb81566db6e4a33308463a7
Date: Thu, 14 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657779412
