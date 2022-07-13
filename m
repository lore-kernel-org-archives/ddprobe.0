Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3143D28E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657706212;
	h=To:Subject:From:Message-Id:Date;
	bh=hSkCAgaC0Sg94T8xdVLu4UoxCkWmbnTJRSpxMITLfOU=;
	b=khxsyyu3P1sAnra3hez5KtawHcez3Z5hcrZVixMt3KpbzqACCbxEY1O142upxPzO
	zQ6onpfC4N5soQxJL+x5ZSf6cUONsFzoXAJvUCyTgkkB9cq9LYPS2ppED1oPgIAAGIY
	oI5dQ2DNs5omuAymQyZTK4cQNWkFIuz18L1FckeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657706212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hSkCAgaC0Sg94T8xdVLu4UoxCkWmbnTJRSpxMITLfOU=;
	b=gXLOynpH4Tvf/Szpd0AuVlIO4Ii6WNj4VUdiDG9iHDoEayV8x/qFelGK3vhwIh4K
	HEpuTAAHYiektakDzw1Xuq/63kks11XiqwcmMehvIRryz23PsXJ3yRdx4zcxM1agHVi
	G5792yavw3KcPxMm+3QjMBZoLX9ED+5xpf9bgliU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6fd6bfc-fd29629a-57aa-449d-b8a3-b094f15fb641-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a978c565fbd069bcd1e138a7c48427cd034a23a301e7a732e2251fce411997d
Date: Wed, 13 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657706212
