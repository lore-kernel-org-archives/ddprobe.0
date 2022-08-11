Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B80E46A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660242052;
	h=To:Subject:From:Message-Id:Date;
	bh=FU4lSJysdZUv1jxLz6TKxtqtGOYA2zu5qt5BQnnX4ag=;
	b=Y4GxpwQTzYrIUYP4Do5STUdCKXP/DvDfHzD8nQ1ecGdbZFea6LDx5ClmBHgOQVWg
	WD5sMIOJRSOyHNUZw4q2ZEdLfUCO3eY2FoY1GT7PNkn/svLKzzOzuPO3FmJNfdEaIym
	SX8UqBNGj53Z0zTqTfg3jSY5R7wZeg0WLvHGVqfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660242052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FU4lSJysdZUv1jxLz6TKxtqtGOYA2zu5qt5BQnnX4ag=;
	b=LH2DTS7K2XuFWk3QOfMuSSQRVxlKHEFxcLzeMFgDRhg3TcgOw+X3nFLNsYZg9oMH
	9s+KorfdoFgBaIswSq9oev6WXWUwHNFzIRZTnxTTYnVMqzauQMFywccRtAhtyXn4npK
	A10idTDp6rKRi9+QjPogK6r5XR0XAKKDs3Gm0P1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e23463e-daa15861-dac0-4a8a-a69e-6291bbfcdf9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf7b6e25c911837133d72acef84d033bf59acacffcb17bca469f2b7a6ab8a9d
Date: Thu, 11 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660242052
