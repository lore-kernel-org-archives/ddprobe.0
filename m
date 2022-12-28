Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99D62F43
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908CBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672260087;
	bh=nZOQ1w2SiEnA0GQMJ+ojpdnVyYb+NGSpL9uYU1vfpkU=;
	h=To:Subject:From:Date:From;
	b=IHtzwXEV9Mr4WOiir6d+9gZkmvnFrgGi5brHOOk8gg1TQxHNP/VVwhSo0gL5zf3n+
	 ax+QxFm2R+PLGLhAeqW3QhHPH1a51sOCovKx/NboKtmfNq9e1D4gnkoaoJ2XdYlIhQ
	 yYJtDv2/xH4zrzv7n67vZhK4pVURJR6mm7i6q7p1YAqbpP3PwhR90rADOtYE4q0g4I
	 ZX28hbUh0DQIBIi3QyPYYxjJMFEyDil6wYC/ItPkFCNHc5ieTSFV0gkbvsvkli+Q+1
	 pRpb7FUGuQ+fhkp5xxHC7dc3Cg1dvscNFnvFp3ZxdofanjcsrkI+r6uM+zLOpDRtB2
	 UnfTLH8No6e8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB0FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226008744.3157.1111176243509778292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e628211442f1f74aee7230702383c398c0d8ff344540fb480342bde8e643cc0b
Date: Wed, 28 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672260087
