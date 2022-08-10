Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3FE28E1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660150852;
	h=To:Subject:From:Message-Id:Date;
	bh=+tefI4Od1uZJnpP19X+FbiNK+62OfYxqaa4JXo3uL9E=;
	b=AedQe+oMaJ94+ngrPXp4K1KegE+Cn7FXLGPKr7k873U8xZG/DrHrwOQLuNQgR9Mp
	oBjGfKLVLIMbMJmZCj7Gc2s38ITAP8hXXn9b4W/BCtPsV475l7gL1pXdXNHeS048RlW
	M0kUhSGIgiR8JNN2cPc/6GgGsu/nVOQ31P0hIzmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660150852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+tefI4Od1uZJnpP19X+FbiNK+62OfYxqaa4JXo3uL9E=;
	b=KGqh9k4i/Y8Qz4u90Am4DhJlMLddBrNa/AoDbR0alOTz4/ux5BeaE/uDjBOl1/Hv
	3qbP/oTLhhYtL9eF8Y2pIbBuyuPw3i9YtxRG1vDIKoSQ+ESxxL9PZ1/rr7gImbSkBFZ
	NOCFWgymNpbMOP5IgudwbCsWxCua9fJtBzwiBnRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018288b3ac16-43265c4e-d644-445a-aa1a-e3a47db06f85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0aaedba5c0a2e4dae696371e889d2c25a4de41d762d73cece0d4ec8b167fe085
Date: Wed, 10 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660150852
