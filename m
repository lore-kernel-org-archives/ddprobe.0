Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A5F7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 13:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654953959;
	h=To:Subject:From:Message-Id:Date;
	bh=Ozxa8JuesKB+NpnKh5I+wqYocm6iKXYWj/wWmj9FAz0=;
	b=DrUbyc9/Pj1+WSd/WZA88VFTQcMFKGd4bxvdBimtwC+uGaQOYt+0QYB8SwJWPlSO
	pl98nAaqSLdPMuxLK50WGv2gwJvgaR2ErsQoS75dJsepJzfCrH2KxYe/Ya/SpDh559s
	4J/FjVPG3V4XWBEP36lOF7q0aoT07UwYl4QFReew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654953959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ozxa8JuesKB+NpnKh5I+wqYocm6iKXYWj/wWmj9FAz0=;
	b=YQAjGh/r5UgGAxhCiSqa2PrmNTlk0UJjnE0ud0xKWEraM6PoVhjWWiwtMPL0j7SW
	KmF+jIjSCVaxiFh5+PS8AqHBpBVQsg926S3jglaxacZwvQpMTtBThSChgNNBDLL2fW/
	0O68kTqEU5Cz+cELlSi9CsGm1RmbLRcwhwoNdCzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152f15f78-2710154a-2fbc-439a-91c4-1808a253c744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cd4da1caa42a886042d790a6717f7aa50a4bc71832f8ea10cb8f5c98c66cf6a
Date: Sat, 11 Jun 2022 13:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654953959
