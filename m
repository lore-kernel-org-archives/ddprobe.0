Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE39A31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 03:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654227959;
	h=To:Subject:From:Message-Id:Date;
	bh=S1MRZNBi8tOXwma/uAZmJ7Vqa9H27lTRa49RAf9r0sM=;
	b=SO9aITCi4QdB8i3sA4VLcb2iCNTWtvSO+T7wvsBdMKD1VKCjspkxBbMrxsq5Atrb
	TmM2rYj9CLqerqPR3ZxXA/YQCVmgJc0I8tBBrKcI6VVPmCrsCriAYMmHnJhV5OuicN6
	pXjBCUkxYcOtTBy4SCb4OcznG2nSIAMB4RgvzO0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654227959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S1MRZNBi8tOXwma/uAZmJ7Vqa9H27lTRa49RAf9r0sM=;
	b=b2IFDd/GZFOxPq0RSnVFzJpOmzEVL/VvyeHYmmAH/eshLxV1Y7jvvhJxkd0NZxl8
	YlQU3phY2BU278KoXPHwfsne8KOt9k863tJMAzH4mQCoBuUK5j52wumADCXg06ia7iw
	Avjk64PpX1prygP4dqfw0JSraz9JJktF3DHcLSQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127ab7e1c-e6b41554-8aa1-440f-a8a1-a9e458e9cb83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa2690e9fa5597fff954d5ab21140bfdcb50881988174a123f89c70ed06bf946
Date: Fri, 3 Jun 2022 03:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654227959
