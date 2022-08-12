Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582CD2F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660341052;
	h=To:Subject:From:Message-Id:Date;
	bh=Zf6EOtiKlguAhS2aVLuyAgGfB6qm3S3Zo+ARhHxhC+A=;
	b=dpig6gwMN39myh4o2zQzVceLsQ8oG5yiobzvR4NOthm1yBBm930ciGnHywhmhcsu
	BpdVq4l4RMiVzXlb7TuITxYFyFUPz8uirVVU5dBPfXpRW1iU5gOe42AMIdqS1Bb3y0H
	mVwFWuSNJMeJi+u/tkEEVHyqZB7bOhJYlqyFuwak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660341052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zf6EOtiKlguAhS2aVLuyAgGfB6qm3S3Zo+ARhHxhC+A=;
	b=bNXDxPSbMEqYC5Z98kvzz1v/SGRnWJQ6wcVvmys5CWS4Xe0HfwMSw7RvIhlIBHic
	9NQPUhZggAJYjJvdWaQBKqsrFLRGlQUloIEIrH8THaZYzH6v/UEY5KlBJ0R5L6BgzKP
	odO0W/UWtBGg/8mLddc/3nxKPx1KSzKQzv/vPZz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829409e486-4a4f98f8-292e-44fe-8d41-319f31312676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55341034b9008c5472b0331584b925066b586a748d0fb6f11f54e263c610fbad
Date: Fri, 12 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660341052
