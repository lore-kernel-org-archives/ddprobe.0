Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F62A1B73
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647273684;
	h=To:Subject:From:Message-Id:Date;
	bh=1VJbMuLlPbl7AA/WVFGEPcbKelTk4N6hLx8d8H/pGNU=;
	b=kDJt4vTCYqJG/Be7S2bwxWmibiGzuKWUrtXbpUho+RUWgW0u75uvGkCH7FYFjLOP
	oNevpOD1zTx6zi5zMfKgEti2Ga/WWQhICOzeo2srdD19stLRiUbwLY7D8+3xplNic/p
	wNzrzWpWcbfp3mwqGfvs5SOYlwvyFQdC4Jlpumxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647273684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1VJbMuLlPbl7AA/WVFGEPcbKelTk4N6hLx8d8H/pGNU=;
	b=c3lGS7J6tkK6lF6E6XoDJKJ2MmG13uCe0VVK5xBAFVFbdDQn7112t5PV6Ib6QP2/
	WActeSN5yorTa3kwEwrk+slKnaFnJb274L4BiiOgMCmfkJ+Dx8vvnroq65x1auXl/Q9
	X9c3GANJKcBqjfLcvEp2/ynutTitH+BsOYXdSQjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8929af49-350cc7c2-7f42-4fc0-8cc3-1ece4c82df37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 249dedadd5f05a1b8a44ffb8d84de0c2f539053540a3ca5a4223b08ad0b2db0a
Date: Mon, 14 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647273684
