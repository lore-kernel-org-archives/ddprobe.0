Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7B12EBE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727852154; cv=none; b=TBnP0+EK8I/yJJ9kmghHU8/suW1QLYackZxTMrjKUdh1/7vGJn0TiKV9pIEnMDIqrPeGtBqvO8qvr2JeUJAzgM9+MSRKlvTuGHEpOIEl/RWgel5GEodjV0x5jLo5b8yLkdt9RoDfqdP5InqT3RKdRKZBBf1uhy79ARPZ09U5n5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727852154; c=relaxed/simple;
	bh=lyNXJgeW3SQFVoAE3SKBJ+7K+M6tW0xrDeUDOtCVTQQ=;
	h=To:Subject:From:Message-Id:Date; b=b1bh/0tgGkyTwu1Go2e82OOxKd6V+kwhPrNens+5bTthHvKF8x7v/xFOO4jlyFdLVh/a5tY306guC0yfSccjLTXk7hq5LlSXw6+admgrwiohwCXc6KLxU706+QOnte0bX7gfrGljS0AO2rdIT3c7CdGLsvyKwrYBdA9OZ/llDVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVY2oCHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVY2oCHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F54C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727852153;
	bh=lyNXJgeW3SQFVoAE3SKBJ+7K+M6tW0xrDeUDOtCVTQQ=;
	h=To:Subject:From:Date:From;
	b=TVY2oCHFTsx9SQprAEgI+R3Lyn5seOMUcJfea1wnRRwQy9Ga9mK60jp5noI4HhDJ+
	 WKVS75LkHe+TZHVRylbT5UU0WG3j4Ce8nwyg1xq+ed39tlZryQa+E7cWq8aMRo+H25
	 y7yXnyrMAUeUa4cxLtfhv1g5RI9sK+Q9/wrse0yKmIRY/bvpx3cYeZbKDUOzd6CsTX
	 Paw3tI5w2RwNHE6Jux5fDozrprHmuhN6B33c4Bfy//g+rNrpTSLiqbCcs9N4aIdjW3
	 Lfd9ZQz4/Qkb5upB7a1l5hYZUK4sqTLWGayv9YY9y5gNHjit9HAJ1qLFWQLKo3c+zY
	 VB+F+MYutn/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5E1CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785215363.2962.2649585493218467367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec614f4b34840951a301e2d5ebd258e80d874608fd4018e907681f56d220538
Date: Wed, 02 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727852153
