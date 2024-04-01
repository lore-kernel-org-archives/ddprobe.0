Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08D353E1E
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712006896; cv=none; b=Nn3oHT52/IB5uhBCRSZZ+ZuRmlMO4w74HXwa4IaeeFJZkBDrlJX2bCKZ888Yf9VIThY0jyAYtCPkK4UEg+e3Cb9VXtVW/9oVkX4L+7MpUsSouCKY69KH1aIf9ZFypbwiShREDM975UrUqX7geB1OIaebCdPml42s5U7E8KtuknA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712006896; c=relaxed/simple;
	bh=0ApkXqmyy/Ls7es+HgfRn4NJLanH9aOm4NJV0N6y4sA=;
	h=To:Subject:From:Message-Id:Date; b=dGqTnMsJJBP4b4G2+lv6cybnWkkeN4voGP/JAX6PZfYtv3WV2bjzqF51uMSa9u1ZRHZLZv6Qu5+Y+Mf/y8zmSLgYBN+e+IzdZY9AMs48WSzB6UiBRiU0VbRjkVDvA5QmhacTVklfBxbrWPQ8iGSx4QaWfJwFUzQYR+pk7MwN6Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHWKOH1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHWKOH1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7599EC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712006896;
	bh=0ApkXqmyy/Ls7es+HgfRn4NJLanH9aOm4NJV0N6y4sA=;
	h=To:Subject:From:Date:From;
	b=NHWKOH1NqGrSsYedlAF3Jojsayco4pysQ+Dwnb0yHsw3Ldgdi2G6RstEUWhuY7bLQ
	 jZm9MQM0oIGD3pMWLJksuh/yj12b8SgJXC/rEYfH/I3Hsxn46EzC6I2cTuNHBmSIKM
	 PbJId6eRrxObdj2eKNUsGUyp11fsHCCNcJpEY2p+b7ApWUuQa99FTGC1mR0r+XXKst
	 Mme2K4KxCh+yz5Z+ENHmKnb2y9/MNoJ9IkLxpJh5YvKg55ux5qam+Pq87M3WZHzuNW
	 cpfASfmIqC4K2U6/2+1XpHs9AlRTFvlsyE46YdeOjx5+u9L05GgkwggjBANDmJpqQv
	 I4p68rm5wfeXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B45CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171200689639.29673.17454974346892929265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6541abdec24c224c43531c58b16ae8ca71a15b841b219962574e7dea813a1e83
Date: Mon, 01 Apr 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712006896
