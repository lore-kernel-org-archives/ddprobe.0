Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7983C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659892852;
	h=To:Subject:From:Message-Id:Date;
	bh=lvrIf5wdxeBRhTDTv6a+NSVn3CInOjAdINUtu00000g=;
	b=PFf/KvVRx+xXzsOTFbqATQkpa37WPzHxZT4SLmCEM1YlM0Vqhdf0s5MlErbtNgtK
	tY+t6NnXU5Nqat73X8WFvXZZ9S657D6Xiy5NsGIKKPEpG9GWWUZt0nZiLxjlJ8QWqqQ
	8W1Qj2ip2D0NWAGdFhBcbuF1V58zVtcoLixj4BGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659892852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lvrIf5wdxeBRhTDTv6a+NSVn3CInOjAdINUtu00000g=;
	b=MEKh5N3OLn7A3lkhRLoN7i2Vored0yGxE9Uc4SIdsyKNUPRHZCNJ9iAHKB/NQgFs
	1dz2kX06YL+9i6WAenAGsZp7d+v5T3+2ieW7P6GOt78SMQCT8k1rAqm0bpmwzWRPECH
	2cVmFRDko5r+SMa9FW4jAXP6j+gNAjV44vxiiBk8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827952e73c-364455ec-a333-4040-8884-f91ae5b16e98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7565f086469d2885846041aff14f6a9921c0aff09bd6211f7a4a0d896b412ba4
Date: Sun, 7 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659892852
