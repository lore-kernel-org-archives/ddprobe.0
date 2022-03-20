Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D09620E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647810084;
	h=To:Subject:From:Message-Id:Date;
	bh=ayJI9LDSoAY1pS5J3MLorH6K5Y0PR2n1g1JNDSl9nVM=;
	b=LBzms4wBMUknpsXuDqcaiGwTlCnyjbmnlfqBYZQQ0H+Qx032L+dRS8hDFuUYOFs5
	iIZZYjI4OlOUCE+b4MD+oSAhRHnojdb10w8lv5VXGfaHNEfvzHGGB82neJyPytZpNHj
	VCkzx4+ghtEYSb1zFXaxH8TOOIPPw3aFFpeZnlEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647810084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ayJI9LDSoAY1pS5J3MLorH6K5Y0PR2n1g1JNDSl9nVM=;
	b=dF1JWy4OuvDaeIrsRBx3LkYnotVeD1S8YNmFUlA5P7wASbt/kMK99qTYhMvd8j1r
	qZRtMkOAcQ9X9563RMnf+Nhu04hPcSl61CXwyNAZl7RgVqBJNSSZc0ZcFddVm8FVKpC
	v4hCSL9xQ3JXFcACz1z32BFXJ9YtwRENpVz95HQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9227f85-38b43b8e-db50-45a4-a24d-9af11383bdbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27c85a7a370f646e5abf906a341ea5fe4b7bfb495dc8795ff4e06f6fe317afc3
Date: Sun, 20 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647810084
