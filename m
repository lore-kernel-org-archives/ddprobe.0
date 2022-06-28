Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED46E33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656422812;
	h=To:Subject:From:Message-Id:Date;
	bh=RQmQo9QUXHecEbuuaKoWr3ELvVKCExOVJmu2OJrgWEQ=;
	b=ipuc5xR23ya+ZMtO1WWhqm8cO4KVHbpnFO6ttLgUYFe45MOY1/W7ua6kNCCocCy0
	hobuJyryBi/y2xKk9jibOL2kainjcLFZ/FsXiVdYKHiyeqIYm1FHkBXuEF/V7oNNq5K
	YSqLzwpsrTNnVDDbfC0QpuD/58LehiEC2sH2Wb1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656422812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQmQo9QUXHecEbuuaKoWr3ELvVKCExOVJmu2OJrgWEQ=;
	b=N4euqSPfgcKeKOYajDivmVqZKqDNJUD46bh+zdfrVxvdA3uKBlqAK7bmhQlmxo5J
	X3S+4tLnf4GprxtbT7R7jkyiC76i6kwPBQnbP23HMN5U+ingUSOs27L6b+rQQZRz5nb
	AFJ2o4TsXBFejNgOWv3S1Kj6bjsmliU0WplaYJ/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa7e4a62-d315ade4-1d99-4df8-8076-4edb3f79f218-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7809a34410ab9e0a894e0395c2eaffedd9beb929e9482a66994c8c8a430a93ad
Date: Tue, 28 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656422812
