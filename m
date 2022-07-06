Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FEB5383
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657124812;
	h=To:Subject:From:Message-Id:Date;
	bh=qn5X2UDkIOsDNFC1HPcgN6Rr0QUwlNIzqQePl3upucg=;
	b=SMVu2nOC/muOm9W1QI+rHAPqN0Gnuj29SAmUqO1fV+IY4/B0ELc97XBEzZXt49aH
	0MK0mQvUk4f9na8OyoqGv0xY1FhXQhzCqNGGt4NIwGxd2Sqr4J0uTdmMoWaA3Z33Pg5
	s11nsD3YwINya/0Ew8fuVmitDGsfeS2Ar/Zt247k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657124812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qn5X2UDkIOsDNFC1HPcgN6Rr0QUwlNIzqQePl3upucg=;
	b=E35KSE7ehAt6PwlqzvqV/fjyD70ulzdih7YCIkBUs9OPOlp7zLvBobA3zBLKRhn2
	ToS5wm4uL5LNExNXm/lsZm1VUOx44swJ4n5JkajzU0t0s+0d77xDukmTZbkumL4tCSj
	wltC3sY32SU+df4c6D9bVGkJZ3vXqcyEIeh1hDuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d455f5d0-fd2b5232-7fc3-4f23-aead-533c7b23f471-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48b92104a903566148550e04b08d29e2e4cbf559a5879b0f28e8689d6709e2d1
Date: Wed, 6 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657124812
