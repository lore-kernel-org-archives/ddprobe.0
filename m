Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041487A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655366279;
	h=To:Subject:From:Message-Id:Date;
	bh=Rw+slpM0HOk6VgqnaWSwrkxGkdFxZVm2am7qubtUZSs=;
	b=MRNPyVlnjHxRB+K34vkZqltEwERS8VRz1oALo3DLi9lcfqVCCvL4kBqkCptj/pU7
	1guP2D2n/zzas7hBkDzp7iUe1Ix/erAgG0/t0emqNEn533/UIOOZasq4enSTf5Rf9bo
	sF35NC3AQCtaALDN5T4+3gRIe1GLvSO4pqj/NHcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655366279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rw+slpM0HOk6VgqnaWSwrkxGkdFxZVm2am7qubtUZSs=;
	b=UDMs8Kd8YkX1sfhWa2aUAdmNtx9Tens03udMHJikwiPhWql8Po15fbsuKGk++JPy
	hHzK9bRhls/0KOtKlP+YvmtWM5JUEtBc9fTbhGiGP56/w1o/Hvzy/nd+bGjRBwDO7sh
	jnTqNJ9Hw/V769COReU8PTVeg5MKKAdNzBrSkq5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b84e06e-b717e24a-26b5-4b88-a42d-e22a24181100-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45e0c8029df23f4b50707012ed2be5eb08ca2d868382c5535fccb0402ff18870
Date: Thu, 16 Jun 2022 07:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655366279
