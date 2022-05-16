Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2728F1361
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 17:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652720579;
	h=To:Subject:From:Message-Id:Date;
	bh=2MYiEwvCQHkLrqumRs6xqkqTgj6rnPvC8kWWyFHvY7Y=;
	b=DRs6NVjTfdwHJ5wJD9FbGE/PrYjw2XeQylRMNkYCmrO9mZcGXDvSpqVW3S0ldDjT
	FbgGppZZXq5IIEii2dS/n/SCDqfhS3M27A8jmpj8wh8Z0RqtmGTFLqB80fJiRnzSQJs
	hfuLFkcqdPjzIQuutzPithqiq+za0Rt91uztP7NI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652720579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2MYiEwvCQHkLrqumRs6xqkqTgj6rnPvC8kWWyFHvY7Y=;
	b=BoA+lY1OgpA1pN487u/pctl72eVKuz1PPhu1PMSp9v6RZXUTWs5OAudVnXl2sVX/
	tTZiRi6oQXtBog+ZbEpHgNH+3hhZGwaQmk10u8Z8Ubxmch1YyVDYOTIvifJkPiQvlUq
	OiTV/baT6bCRMBI0AwF1256Vm+hi0yjaPxaWHYFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cdd2b2c9-30c5426a-dfda-4463-bbfd-3c4b1ff468a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cf0c1bb6e7986a73501bb53c7c5177ea2fe85e85ad6f8f5ef232d149b27d461
Date: Mon, 16 May 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652720579
