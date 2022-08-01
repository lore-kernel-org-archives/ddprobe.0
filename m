Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD367F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659317452;
	h=To:Subject:From:Message-Id:Date;
	bh=CA7u5mufSIfy4N0wv2pHP3zHTvSoU7Ilv54JY99zZgA=;
	b=X5p+HVEOcTqn8GqOT5DUcOLx1Ik63G1La/CCX4/mU0PRXgsrVMte/U/jPn/RZNkh
	/9bDWjpaulDnqWf72J1aRoGvhtLpCxkpae3uATcGaJzd1csAn8iwlFOG2KU9N8KnSXb
	uaEoZfMXKbfxeGxJ5L14ql+AeZ8roPnKVu6JIphI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659317452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CA7u5mufSIfy4N0wv2pHP3zHTvSoU7Ilv54JY99zZgA=;
	b=N5UNzqwyFjzAEStj4XjVsR/izj67qbepEF2PFI1W2Tm+gStWKiknp2sUSX/ID6QX
	TuwOHpjCxAs20pGUG0CBjNTimzk6/odQ4Y8ssY2v5BSLw64gk8pQtWQe+szHht6R9kT
	NY5bt5k8/1Nbakpk0uGbloSJRxgtObMesVBru42w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825706ff0d-2ff56829-549a-41bd-b371-08c3dd5857b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05adfa0c54c674a846bf09f2e77cb137a28761605847bd040a9f375c91d6fe3
Date: Mon, 1 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659317452
