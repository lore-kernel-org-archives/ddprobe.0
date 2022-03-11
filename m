Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2E633D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647007884;
	h=To:Subject:From:Message-Id:Date;
	bh=XZCB7e4e9BSlor/g0Xo4pauuVGR/VbC3RFe3M5uELtQ=;
	b=kprlvihlXNRi3aXaZ4jplZ2pNqYLiuOucEAL6I5UmxO5gxC564JYK28jsqvgxND2
	OiskDqjqLg7fiH49qldbUodlOcoLk3I/lgbjdsPxb98h/E+ZtvUDQrwdBY6mrRCAyYX
	AgsLdy7i1wHDjlSW90pX4LiO2NO8TKuCWnat10tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647007884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZCB7e4e9BSlor/g0Xo4pauuVGR/VbC3RFe3M5uELtQ=;
	b=R1tkYC0GhUnuy49FqTVq5X6mMPwlhAxIbMLVhYev8p/6bOODyJxNx2bNFjWNncow
	64ZiCsQvBLohKG+VWLSa9ZDUI+v0oKHtB6X9aTlsJVzyMF+gnWTMht0hMQu5KQJvfk1
	OM94EvrJuUe1mfAqXFjMORxGdCWrAz2BZX2lVw+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7951e5bb-1f214a42-80db-4b0c-9bca-ba1260782588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae82ff840547aff6ae0656c25dbfb80f7a55d8ce98954493ade8182eee367079
Date: Fri, 11 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647007884
