Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CDC7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 12:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654603319;
	h=To:Subject:From:Message-Id:Date;
	bh=QWSXUVQYFqCgHv5foSduAG1sZJIeOojYlH9rC9aD0KQ=;
	b=hSH2gwZNSAmkXPft/u0tKt4fwL5mPoBls0JqgPcDZjp0MJx3jVhU4faJuqW9W+f6
	t5DRFHdGVB/taEV4qSnw55txzwdPemcybeRXtYbFNFe+soKQYnaK0P9HTzZm8caIsMv
	Z4trAgxzi4AFL6L3mawSvQTs9LYYZtJ8bz3zfxTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654603319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QWSXUVQYFqCgHv5foSduAG1sZJIeOojYlH9rC9aD0KQ=;
	b=CM6UsDNFaMXzsYSXNCDAG7QYFOhOxGOgbSNN+m1HovxkNn6B7ypYgIC3LxZvLrZT
	mgmJo15osFF0w5Yet1Y3XGjaCjNpJkN9/OSSExn8wlQHvF32G3JFy88nQWh7DzF6Mjd
	s2WuB+f61WOg97aIwN3rO9mb9iR/jtH+mZBDyY1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e0b07e0-db2c5ad2-9fc1-41ef-b0d5-8ee1097300ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38f1a77752c944c2e0bbab4b6eee600547c5cb459b89ec4dc6684c15ddf315bb
Date: Tue, 7 Jun 2022 12:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654603319
