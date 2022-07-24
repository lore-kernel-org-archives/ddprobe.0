Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2913F33FA
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658696212;
	h=To:Subject:From:Message-Id:Date;
	bh=bcrBvumyeEk+y5g48FlzRvXiEh8Yai6Z3RM+MjekXEY=;
	b=VSXicE05jQc6pcWDFebVMxk8qilmzBGSSEQVuH9OPOCYHsim/0YQ/uQ9/yxTl6K1
	V4/lbYPnflDHxxX7gnsUVcKvqFs53Pkqf3t7s+zucHIeyxzBKAdfQmrT956FP42LluC
	vKACtySmPkWaNEbihtVec510e5De6P3O9sf5c3bM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658696212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bcrBvumyeEk+y5g48FlzRvXiEh8Yai6Z3RM+MjekXEY=;
	b=LftR8V7kpb0gWpy7lVz8gki52aaUC7HYE79klpIH04/4M8VQ+5/GPnIu0F9awBtF
	dRNLKyQJxH9rR17Iey4EWOmWGoFvQf4wBoarlx2SGg6B/q54PCt3qJH71LSCpNCcXBw
	B0dFeou06sHkQ/5D9+BM4krbryQWPEmMDlAkRf24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231ff9f40-f33b3902-6d13-4160-8f05-ff5445f87881-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5377a52e464f5600ee1fd2d6f20b72909b1ec559e96a0c0e21458135bcf34513
Date: Sun, 24 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658696212
