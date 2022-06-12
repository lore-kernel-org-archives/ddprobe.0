Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1DE1369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 18:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655059799;
	h=To:Subject:From:Message-Id:Date;
	bh=3PfN4oi1b78tGtWwAsDtdAaFeXjkjZSSfRmZCO78RmU=;
	b=PJT4tbWNz3asNyySq5o7KC2ajehZod/MOdCPDbMeuk9ZKBaYws8jKOFGHrybQN2U
	FaZfm+OTXRSqvxuXZtIBFaDYMvRHH6IvNbisivgXHP7WBdteEc6rm4runtC4AV1bH0M
	FAacia29//lPNlHYctvQ2sa7WBWU8VuX6HIT74E4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655059799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3PfN4oi1b78tGtWwAsDtdAaFeXjkjZSSfRmZCO78RmU=;
	b=NpWQLu4DqqcgXwEkieiV+MD7FMVaXPGZBd/0yJkUxtdmYva3/mhwSUD4tKiYuFcO
	709PR1/WsR4IDoP4ZXPJxTN829QHs+sD89Zfzyo/e+89r4iXVS7/6Nk6NdMUq1yFH3T
	QVwzLED8bBts4CEWvKY1RKVlkawzr/ngik90YR38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159405ccb-0bf083c4-19c9-419d-9a97-525667cd60fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05745952f188c44d57c93dd7ca5e42f692f5f0400938da3c9a708c96b03f2c2
Date: Sun, 12 Jun 2022 18:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655059799
