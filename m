Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F497A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656575812;
	h=To:Subject:From:Message-Id:Date;
	bh=ZgjRxTB1ST9uWbXkNEHMGQQTRKZ3aEDJPajT368Iq0E=;
	b=OAKVCUxkGovFvXIDAXYTg3Vsag/MhQXsWKNmkJj2KDej+JdocwRUNIB7IQznGrKv
	CA6pqj/sqy4AzM14Duc1oy17A87srNTnoHY4JgMKgyN3SyeRvJxuG5HzWOSZwUsGV9S
	2iXfYYsm9Iy924H8tPOoEbs98eHSUr+zq543sypI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656575812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZgjRxTB1ST9uWbXkNEHMGQQTRKZ3aEDJPajT368Iq0E=;
	b=dQgYmf92GzOIDz4WSGAWX8BdJOEB6CQmx/BTlHpzUVe0hW7sINvI5sUIWRVORcjK
	2dNm4nRgk9Ox04I9MAlVwJGUyoLecNQlBn8CK5QVhr9IMu9Ip+ZcARgai6svkolEp8T
	por9ISFkqhLIILffTILajwoKA7hx2Y9V0E8esceo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b39ce2be-f0de007b-8690-430f-a062-8254a9406a4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c63d47ff236b05a28be809ea90d336c5566bd248c3a1f89a78a0d9baa5f1b4af
Date: Thu, 30 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656575812
