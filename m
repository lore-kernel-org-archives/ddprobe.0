Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C0420E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A87EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671079287;
	bh=LaeuhZaIzkjg/wcls0gSJyUPFQyMeWtbZsOgg0/f5xQ=;
	h=To:Subject:From:Date:From;
	b=Ne6go3LWnkTvd9TNr+9aMJ6z8Gs5Cer/OUORhn3ikkzqcOY5kWP8g4R992xfZTGeG
	 W1ttEEymKG76D2ltCb6RHbZfFuIUCqMlsL6L4WDMvJNmqJSzmTccGwkoAUsh90M61y
	 Imur07mGVvsaRpFutq6gP2Ao72OAS0bjqToxtpAZXg7u06mCeU7bZTy1426WabDiLm
	 XMNjTKuhtdJoSFluPJBdnE49YLQpfiPzBmv+d1dCGrti1df/ifsNXZlMVHDGDTqFFh
	 YnFwk3NFbcTNW9bBQ4fSGaElOkphx6KXZK64PakZiGXEKB8VcEENNUVLywN2lZbFr6
	 pfNPk6NRyzAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6164AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107928738.18514.5089791278126697197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d354ad043455386a173996221b5b2c605379494d9fbcf6bfa291d92cf90aa197
Date: Thu, 15 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671079287
