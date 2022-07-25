Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494AE20E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658777212;
	h=To:Subject:From:Message-Id:Date;
	bh=vAVFMGIwZSYjfytjatRkuYpuTxq1E+fFys1Yg2mol+E=;
	b=bsUi1IgNX9GMCVeV9WoG+TkEKryIjhOoHvmeEMegpVjihyCLTFxVXir9m6+JWQEx
	zVOMU5TstL0QwIAUSSfS+L8oviFrGTLdVs55FSoac4KF+jMXigzqOZkmcZU3mJgPWCR
	4inCyVlntJ4fnk8tdwbkpyKrQ+qzYwR8rU2NCYVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658777212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vAVFMGIwZSYjfytjatRkuYpuTxq1E+fFys1Yg2mol+E=;
	b=GCZQgBEeKcS/3KZwFE3GG1CxE/xd5j9/oU6NpZmLjdrRuyW22GqtmMgEm/Hi94CF
	qe6Y3T8JSVREpnDP7SC0aq7iV3n5mB5XbV5WhtLH575RihsylLpXOPKjcl6DxApUM8X
	F0W9vOh+XyxVQrbv3B/QfE3z+9f+lN2qghPv/RyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236d3959f-abf8b49c-557a-4271-b171-808c65d8dcc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5153eb2dfbc0b44f183946e571c0e1861887638a84600ee7582608e5bfa251a9
Date: Mon, 25 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658777212
