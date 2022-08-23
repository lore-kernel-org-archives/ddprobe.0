Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C03A50
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661239852;
	h=To:Subject:From:Message-Id:Date;
	bh=uu1e8cHB9IXrDJmB8cdMiIEIww7Va213y6vWzVORvsM=;
	b=FyC0ohfskDCSpgTu01bHPr6l2YBQ96w8ys//kTdCEqBCPI0yybsHJnfDCv/nD0Oq
	u1dYAhpRUoZBEdJw3KFLHLCRX2IPWFPSYNQ80qxeNssTs1A0IA6UWDc2GtmEALSb2uq
	BUU74ujA0U9pWYTl55iO4JTuA8u9LWax+PBpQOZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661239852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uu1e8cHB9IXrDJmB8cdMiIEIww7Va213y6vWzVORvsM=;
	b=OkBmgZ8DIEkFKjF2YgTzvrQAxKOhcYdA/MxYXfCaTk4KvUzeablC2ERyPv3J64lR
	0xGyLF6EWjBFmFxga+bpBauJs9tWPzsfEWKeaKOxUOhIUk2lKMs7I01TCvUfDiwIuZX
	iU+8tSJ1k0ajwtGu0u1GtNZTtPuyHZ5efd4qiYgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c99c7e0e-2593b47e-7c57-4a50-b4c4-5673e8f5ba5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3bcb1d3e1572ff8b7d791865e3d8fdfe592314701ae9771ce56f751da7a8ac5
Date: Tue, 23 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661239852
