Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D88635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657253212;
	h=To:Subject:From:Message-Id:Date;
	bh=d5UjnAyVnnsxSMcFksJeP6bA4DqKq3BtabwTT0dMRnM=;
	b=QWYRnRxJtMO0Jm1eU6ffS1ky45IC6d7XSjqa+426Nemvuak7KODJFqXMYA9Ejc2K
	WcUm33mU7Z9tdNmlQ+vZbgtOgoSp/A5xfMQNZ9a7nUBTQw/WOn3i5O3O5gWcCD0Jbi2
	tVDp7qcHdp2+MvivdSbijHDsZ5l6kwewcDs6L6sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657253212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d5UjnAyVnnsxSMcFksJeP6bA4DqKq3BtabwTT0dMRnM=;
	b=YVAdpbmjNXXmac39SdfgcQzfyMgiFY8CUSckq1xJzW/49IcHJwZ6GOVXzl91a5Er
	Vnr9gEv6INGDsZD4mZ+YpbL3yqAZgOMNwEe4CUdsmTrVdMH601SaxPFFJvFufHjVR2Q
	pvTVbMfwonytXZ7DOBaem2dZBYmv2TvyKM4c92v0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbfd3099-dc1ebd5a-45ab-4348-bc65-d343007f6993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aba1b3b41574c0e3af56e90b139e7d7f595f81f6732fa7ec8f0202ac96213d18
Date: Fri, 8 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657253212
