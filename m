Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125B32F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654897799;
	h=To:Subject:From:Message-Id:Date;
	bh=rQUEAkmx1WyFnl+c1wf5v8gRGhd8D4AQET4tyOJu1nw=;
	b=ZXZcRzgVx3O7HB87rL4KiGoT5W+OUkGYrrfGyy4fqLovxWmVkW4lnQVsIymOhu8g
	445okgccvRRs8okEX/dZzp0N4UIq27X8o8qBdjDIcRiy42HiUjJM52GmTBj2eauk+th
	MDABvHvd7AsZcE8TkyosCmg+HzM3KeYLDo5FUKOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654897799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rQUEAkmx1WyFnl+c1wf5v8gRGhd8D4AQET4tyOJu1nw=;
	b=XFzu0FIuKRS44vlKfFIPFIapGS66hC33B3xu/lBUXdPvv75BGjWoOa/bXFwTOGFW
	AFfPgin7evFQi39IYh/Z22SDd3wrsAi5KdlM39U1eZCp0H7IXFvq29UB/0ILUvm6rCV
	ZKKuo7cGHdAbmKkJRkOXAQT+TuQq7lSDJu790LeU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f98709b-6bb283d7-ce6c-4003-b30c-89c621b7426c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5daf7fd2e73b30f75ed2569d8444497f04878734cadd7a74a7295c61d72795e4
Date: Fri, 10 Jun 2022 21:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654897799
