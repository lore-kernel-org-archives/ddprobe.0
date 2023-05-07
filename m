Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D601C04
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6378C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683443885;
	bh=1o50F8pGLcjFYJe1Wlej1h7CQATzEhmr4R+QxEatVi8=;
	h=To:Subject:From:Date:From;
	b=fyGbxUTGc6Zp3flfsXsfoUa34IF3XcFTRpP/BidnBEiCXvtjhIYm10HRjEJR93e96
	 vJDoOUf/2G3XYQqQAX2EMDxAH1UpZmGpq8rYEwe3ALuT+036sCoYNx9UkUHCV9cHq5
	 PFGdj9tZjKiJUyl+PWR9usvL33JThqU0CnsZsYHSiDSZ5Soc3BoTkPDWWrrxiQXhHj
	 vrTgty+ZV17WI6nqY4bXQ2pjxZtyct2w+DQiXbIyUGaL5jF02ESM4F6MHhtg0O5JWg
	 x78R7bQkBLz34aS+fYf8yAMF8+R5/9Rq5XrKXeYFGXA9gU6B+hVZvNZcu1ArPBv7hQ
	 dN05JqxiW5fTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7014C77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 07:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168344388572.24400.11567097339628392741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27b3d065ccf036741fe3a838af4c91e0bc810d2814a5a9944c96c2fa8725c2a
Date: Sun, 07 May 2023 07:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683443885
