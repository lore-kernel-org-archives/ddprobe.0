Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC122564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 23:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649461678;
	h=To:Subject:From:Message-Id:Date;
	bh=mSRi5ndlCg3UaRCTVnbc3w5c0onU9A581V/AmkkzOJQ=;
	b=ZMj6GayWRB4SEa5C4LUIw0/vtXwlI9/h6Z5mLM8fJM3Q1AHSor4RnQCu4yyJmIcU
	5k3d0+QoKst2U7hNNqGrcr+rM15AZBQXnlYfkY3JBGsjAMu4KOuzYvUbD7txQ2130es
	Hz1uIkUo3hxevaDIL+oraHK2ZvguG1Pz0vRvaRZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649461678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mSRi5ndlCg3UaRCTVnbc3w5c0onU9A581V/AmkkzOJQ=;
	b=QA+fcbLKC/AFlejW5bWbKbc6whLYBZR5bymKQy9ikqsqhUbOIM3M3wE7nYrUxrhF
	LkCGbqVoPFRbT3bVhasEsoOTHXbibdRxqvBaxyYqki6WCJz+OFmIyVoa72Hsz2+GuHd
	UpXSpvDAjRym0f3nz4lDrzXmY/nC+44GMetg+3JM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b93d0d4-c931f860-b099-4949-b27f-3050c7893d2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22c251f9320ffe676a00a888038cf5e88003b84100902174a68bf4f3b294fc95
Date: Fri, 8 Apr 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649461678
