Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D7D107A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74424C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669072854;
	bh=UfgIEe3ot91rxgt09DlLe+tmglRJxcfkKSqMQiXO7h0=;
	h=To:Subject:From:Date:From;
	b=YYW45//whZmxWbGKKttNx6CLG4pAA+Q8OBSv4z/c4RPoejDamT++QHa15jVS42RWI
	 Rmx+1kao+HW4hJuVNv1ItPwFPjjAyX3QFA+LIboOwECm8H3B915SZO9gJG12SuwKxg
	 lwk6VdNWP4gKPJ1HnBgktSMKVlRjskZdCiO2GB5pBOUKIe2IVfQ4ISc/TsIKlmO4z5
	 xtwsee/4beRxZTiSuLLkwtg7sRmvmHyki9G/HPDb1DR24LuUz+T6OuTMLPI3hBsF0e
	 eBzmonwVTIgx3dEPztVKGOJBj6XgNbboKFgUBslmrZXtbHB6II8YwvCESd1gg9n/S/
	 xBjQIZU1a+kyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575A1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907285434.12592.10600065002273251760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51b64b843a4dfb5a700934f690335ef24d84ad125ee317dbce617c403e6579b
Date: Mon, 21 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669072854
