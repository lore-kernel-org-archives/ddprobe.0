Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD182119
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 16:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654879979;
	h=To:Subject:From:Message-Id:Date;
	bh=oR8fZgNQavEscd9U9AzG+WL0hyM7+0LvtHa1CownsZ0=;
	b=PgWp/J18ODrwFFh92/U21VMZPeYn5jQ+u1DfkEGhKRc3p9G7qCZYQKF7Kl1Mmjw4
	DrjWA8lxbM6L4qLX86vsMHyfVDaEnKiktym4M4wIt5d+Yty4TBoVCMammkLCJFLtg7H
	m2406i9VGTtF13loq0Ra8xSY2qgA/ZzSS+doauj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654879979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oR8fZgNQavEscd9U9AzG+WL0hyM7+0LvtHa1CownsZ0=;
	b=JUJRRj0yrfi/ukHC48oGGgDszVn481/BBhHgrvqF+2rBTD7A1RwD4zdj1yWODRRl
	A5SbmUeLEU8a9bk9LfBCIa+e6LleuIL5o2I584iAJ4yjsQTTqgdBY/WcBaOM7XCnVgx
	mmIoJKf3vQMo6KcUx+btivY6M5NbVKNAWu7JTvLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e8886fd-65fa4321-bfb7-46df-93cb-83875482ee3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e801fb060e9e7bfbd691977f13378118f29b303f6ffbf6bbef16ab293281956d
Date: Fri, 10 Jun 2022 16:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654879979
