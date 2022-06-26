Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18617A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656280612;
	h=To:Subject:From:Message-Id:Date;
	bh=BKzvjwrx1ZYoMR5GKKVlf0RZVKX4A+JogObHq38/1og=;
	b=PjzQmI78OvNzhcBSwOihAwTrvk+moThV6Q/tkY62qfS5zk9DGJMfM0ZjbKyIa90b
	23hgz9RMh9OM5exxxPD+dVhiPptw3CyqRBuVTG2S7TvOGxyz/rmNAbWNJZR7EoL1HJq
	Qm4v1TAtYJo9vdL/tJcJI6VOenV6PSpJuBWMGKqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656280612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BKzvjwrx1ZYoMR5GKKVlf0RZVKX4A+JogObHq38/1og=;
	b=UJEuJWuMQKj5nsImTSFjd41WoTRHy8UARN8A4HBKZpGpm5EbxsOG0UMktLs5yIhx
	Jq9C8YQnwJFAYr+JyyJTCst87HsoF86zZ6gWyRP6vQwrEBVDLdGZWN8acOAZU8vwDsU
	h/18akFfcvNX17dZizV+Yj1+OWtPaKCBQfdC70Qw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2047da7-cbf61bfd-a2e3-40b4-98d7-1d5b934f553b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4bc773ba29277e8b4bfd34d5e518cbaa96d8b2ffffe103e48d132fabef77eb4
Date: Sun, 26 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656280612
