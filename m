Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159E720F1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 06:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653978419;
	h=To:Subject:From:Message-Id:Date;
	bh=riNGFgKhbt7G77AnwRfj4pA3GVJ1uyYV5wpyBO/VjV4=;
	b=TXj3oSbKMDOIXhgbW6fl/vMcErAqe/NFev6TAEuESy8ODlfRXfFX4VNAKB9ImEfr
	HaW++AJ5Es6jAAtb0kHIdTm9vYqQULSuXcq0F3Uv0umfT6popdG+GPqQLd5ve/NQZ52
	uQZFqSbddz6CyjBtEOs/LaH+khRZZKFRoNdYo/LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653978419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=riNGFgKhbt7G77AnwRfj4pA3GVJ1uyYV5wpyBO/VjV4=;
	b=jfMGAUurm2tetTqjs9sXsKMKGoiOHj6/rpE1VYTrUBL5O0pBtwfRQZ6W4+aXVDUy
	5u4FDFuNby5klwzt9wFtykEERKHtsJpIww/NW5k0OUaz4foJqyjl28dFAlVNrd9q4eG
	iZaS5/Ey1vi3r0z4UGr5AykOqs6MJ+FhOnvsPjeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118cbd031-571349e3-db03-44aa-9860-20972008bb98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef65a75bad1937121cba4cb54a91fd7fa0d884fbca6ac5331d6b714723d8d3d4
Date: Tue, 31 May 2022 06:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653978419
