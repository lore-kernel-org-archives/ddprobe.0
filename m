Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE609134A1
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssfa+Vql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7F5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703877496;
	bh=Bxuwzw8eVSNzG6ZrPKnR1jMi5VdoUbj+Ak/r6JUMZak=;
	h=To:Subject:From:Date:From;
	b=Ssfa+VqlysKlFJTjXYjXQ1wKExLniIWwDpcnWefJUSJr8BLuCdS6rPe991FNtc6/Z
	 EYs9yABx2ZT7nXDNx9E7zJDdo0xLcSWjzVXRt9FshZqsf+zAA1hySNB5KiQodez7aU
	 BZ0woDJvXEk/qwoU/rq+eI4x6Jh4tYif4AIm/waWQES9VM7v5b5z2FJnK/Tk+BxyKS
	 uzg1wyTVsKDQ6mglXV/7167KkNmpIVk9DLNP4+SM5ZlOkWwy/y/XQoaTIraQVJdbSD
	 b5YuJIBF2OWwzkclnq3N0SyyahNQNGSV6RyEyG2qNYKjqG4+spofvUesxO2JyA86ke
	 1msL8ROpHrRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B2BC47073
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170387749638.27298.7196279659466168902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a597cd3990e51fd32e3ebfb20d21fc6508cfb4abcfe8125f6048b83ba3520b0
Date: Fri, 29 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703877496
