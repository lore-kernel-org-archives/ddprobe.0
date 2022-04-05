Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8D817C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 19:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649185978;
	h=To:Subject:From:Message-Id:Date;
	bh=K60nlw0dul+KqPqzNZTLFpcqCyN09FnP2RWGw3KIhgE=;
	b=eyX3MeGTYSB8ThgcL8HFYjZQ8L59omgw2HjsQVoNfm6GK68DaW9Trkduf3vHbbis
	gnJJUb6xz66jWjpA2W4xlghw+Ax2HyF4vBsoxiWpeECX72bnhSXYQOFxjuHFR3RXwxB
	yECJFxyfn+ORUdx34owEhYY/xV03jXiLk5hCsHr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649185978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K60nlw0dul+KqPqzNZTLFpcqCyN09FnP2RWGw3KIhgE=;
	b=ej/PQoGf8I4T0CFZ3/ymDdKtSncs6cgR4nUPcO9110MEJVIpAPE8vmtHtweF7WPg
	uCRGT6tYP8rF0ezNW0aN9jLlNo335ThYFouR6Nf3eUrMpfbYyuisIHeV5A6QBmQzfCj
	p1EXUWXAwvZJTw43bjCk5Rl0vZIPtA5vjj53clbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffb24f818-ae25ee30-6f02-4f42-aee0-b1bcc3602792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac3a6c90d0ab5a8afd7d9c8866d032aa5777e0e952b3d5176f4e93c1b440034e
Date: Tue, 5 Apr 2022 19:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649185978
