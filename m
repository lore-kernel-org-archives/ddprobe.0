Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A5643AA1
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713515963; cv=none; b=NJZCCMcm/44mVJjZUh3fndfU6Xl4hBMUj5j47G9TaVJ5Ci8tfibbpBCcyLeCP2RDcGVU1+Ys1zmMUb/teRo1qmjX/4VH7iN/LEzTDFVn+pFx6MzXb4iuD3AtE9wgVEY0Wc2mQN1rKG2eqShhNbN2JoaOU8IVEVGBdF2w1TLhSD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713515963; c=relaxed/simple;
	bh=ojoX37bLc9Z1+9YLYiBP8Tz1l/TvuKylu5HtahncG8Q=;
	h=To:Subject:From:Message-Id:Date; b=V7V0bVWu5rtumavxdfN9rWiMLAc3EshE62ENUN60n0w6kjKDZxMNPq+f7ACJx6dQcftF/iQnOx2RbkjIfv6DdnvpPOgHzK4g3SQSyuF0Hq9/CEBhErGPXUzcrc/ff4gkzTr1Qx70b4M6Ywdqxvr1IQdOB0RwoBqshDBCpNKvkGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsgkOm3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsgkOm3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C77C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713515963;
	bh=ojoX37bLc9Z1+9YLYiBP8Tz1l/TvuKylu5HtahncG8Q=;
	h=To:Subject:From:Date:From;
	b=JsgkOm3n13HMGpEaCwIWqzvgHzd3WypCK5y6UjJLl8UJBtowRSWaeLg+OAm/gmxhH
	 b0UaxYcUmDnrAJc+wacnXUMqWXNlAZl4wbHgF3x5t38AHuhdYyLgTMSc11ooSof66c
	 LPXwJU44jlZul7+padvcrZ4J0BicpFbqix8YW7bo+p60AVS/i+IGXrGDoGN/DfJSkB
	 DwCr60hnihI4IywVIkGrZB5C/1GtvYnDsZj6Zr/8O5BFnqEs7P1h3HJlHc7G6PxEzF
	 XHBiGzBHvYQrjugPABaIx3maesZdtfFC1rAJ3hfQR2UVqetx23UbGZvlTWZQomBbm5
	 K9Clhut8MUKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6981C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351596290.25985.4564340598316149274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248383e27218a1ebef4a3864ad41b07edbceca120313fa817202d029eea3204b
Date: Fri, 19 Apr 2024 08:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713515962
