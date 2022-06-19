Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3AA7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 00:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655597939;
	h=To:Subject:From:Message-Id:Date;
	bh=n6lZLEDBqHiXSGFcSxBuPgFDSUHxd0uYdgYu+GCm1L8=;
	b=RDJPPWdmryRP+Uo/KixRjpmWzUM8oy0mHhYBba7/Yzjn6BTWLX+dhvmQdWdqe9EL
	vYLgxa2iOkX+nXXf3q9GHspy5zGuyL3bBqCxC9ANukMRsMd1csHngzqN9Ml1Lcq7VWZ
	MPyhquIzoDLvtoRBW8HI51yNbKtJhKdBqUVufaD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655597939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n6lZLEDBqHiXSGFcSxBuPgFDSUHxd0uYdgYu+GCm1L8=;
	b=KCfNQGePx9gy386ZDjd6Fqd9bSVXIjqM4DC43NsncdUuFkmxjZ+h6hQsfVcf9/ck
	OBF02145m/U6CcS7Azhyipk4Yq/DLNoTFFWglj7VR2/OMFUHbQPep5B11zwHM41XS2U
	vNUYLPOhlDwYuCKg5+OIU4okPF89ccPm3YlZ3T4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817953ba3a-a35ff3d5-c5a5-4018-aaf6-71c25d5c5417-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 069aa505d2db725994e218a38867a6360a52b00f6e6edd762725488d330dc7f1
Date: Sun, 19 Jun 2022 00:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655597938
