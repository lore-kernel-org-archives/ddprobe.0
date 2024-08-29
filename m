Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEFE14B075
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724922954; cv=none; b=d5Xgl61OvUF2jM7uNQWInz9tPm+78GS/jLtZJNDbKD40rUJQzFT6pTnErt+JpAR9IabUuD6f27Thw+OAo/lKKBWWlpx4giukWWef3ZAsAIkqcIOI6IvGAqpQ9UWV/a+aFE/aSMohc2++oc3Bv/H8keLVQxh00uXpg0HLs/S3d1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724922954; c=relaxed/simple;
	bh=qNSRs/HpgjYUAhhuaDScnDMmMPaL/bG5Mc36hXx1aGo=;
	h=To:Subject:From:Message-Id:Date; b=P2ClqxVu9u0jfBnGKXM+7v8YqOU/QTbFaFR205+NzX1eKizxxDqexPmjmy+j1Il1qMD9oUfxIMwu2Ynt3tx+S0SX4FCJ3LIzpeYJho876zYl2VTb6ObQ/ueyM+Wp7hkLB6Ne37rQYsaFWb3cCK5NuhCaGoB4jcQF3OvR1ZH/lgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqmf0uDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqmf0uDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E0C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724922953;
	bh=qNSRs/HpgjYUAhhuaDScnDMmMPaL/bG5Mc36hXx1aGo=;
	h=To:Subject:From:Date:From;
	b=sqmf0uDG1u+y73oK4X4jh6KMW1sRlxd2h7zKVp95i/7bWRyqXGmNLKCOECyVFwuKy
	 K/C+V4gYDnKOLK5GWTX2GpeArmc0kNfJQ3+o5hwhwRgD3csIjvYw+78n+IVPPn1W4k
	 sCcY42oKzk5gSHa3x9xyoVcEe+mJ3Wmo1KcLiL/p/Dpt5U71T6jtPvDg24LMlhrC3n
	 LhYvc0I+CsZhXiRxXbqeRJ8kwu2cW1QWwObu37y17APqdTSj/6+MX7xuXgBgglamhI
	 rPnFFZ/xyydWcZgATC9budsfHkD793OAyiwOjyVMGurT9Lk3GwkmpByn23mCTOR42x
	 EJf+1Tsef+ETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEF9C71135
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492295362.19811.11382058758830541664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df9ff8955c0e43d40a7720322672736b7f03f6d21aa466f5ff0fa394e4acd07
Date: Thu, 29 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724922953
