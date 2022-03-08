Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5652D4A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646751384;
	h=To:Subject:From:Message-Id:Date;
	bh=tMSorBOcNeMU7KXYZ2uVIV57R2Hd1cNbhmOdsoP3seI=;
	b=WKNJJZKkbQG9hCan0ruIIlyULFYt88MLwxgYUbKWIGqiLGfDG4oYkVrK6if5Qfu+
	SElGk4sRsPBD4tlYU0Q7OCxrYpgxnSVmy+A4MZ3Qowfh1XODFWrby+TxYfpVhVYXcjI
	Bz+5dQ96M02qwf6lp4S683+cCB2jK5bHwotZj5Lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646751384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tMSorBOcNeMU7KXYZ2uVIV57R2Hd1cNbhmOdsoP3seI=;
	b=KhE+jiDQUk2cxTFldXqNNiAG98ogungWpc4rsmKKjLCOf2dkAqPkGr17LDc6Um4g
	xrHNW19FaG2Po6qQfR4MLVGoIdNchJ00PBgHXxUr9AQD4o0XLU2SGPNoH8aZnsVUlk3
	noslFAJvLr1uVBOO8rTayHqmxWkuPmWEwBSGbx+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a0804a0-087062c1-2c94-49df-be62-5bb159dd0884-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b38fe896f70df7c9d533a505df2448fe661f09f7f3312a0ee2fc8a8b89672b2
Date: Tue, 8 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646751384
