Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B101C2F3A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647486684;
	h=To:Subject:From:Message-Id:Date;
	bh=hKmg8qV1NhCrtRCgasgOqnlwQvUFCtMtknSKZvQj1nA=;
	b=IgbKLVjdBHKmSIRnDpY3qpBrXHK8Vi1p6f22r9hw5a5BNESEPBHsZCu7HBKlcKNK
	Fcv7sQQkypaL9KVsN+ZYn/wuKRuHUD2dFgh+n/A2GInfTXy9Mz98bqB1govuPguUlX6
	wA9r8mVq9KpL1S8IwjDVQgCGPufKdoY9r6FbwAlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647486684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hKmg8qV1NhCrtRCgasgOqnlwQvUFCtMtknSKZvQj1nA=;
	b=DR5b382e85WD6yQtyq12JXz3pNFTAp3EnNw+HerllkixbNdsF3ffvGvNYIr6cfkA
	JjAMFAGrBw1d8M4lILaAiOg4U9UL+ffSSCxrgB08aA4FTLoTcUr8rfq2iHuaKFDZo4b
	zFYJdWz4Qes3fR+jRW9FOJxxfxCJAnrVcU4Uyqf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95dbce90-fd5545cb-eb8b-46b3-8dc4-e3a783358bb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 696ed4bc1bbc7f38eb4418322ac28c2daf940481a0dd766766e2965b9d119014
Date: Thu, 17 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647486684
