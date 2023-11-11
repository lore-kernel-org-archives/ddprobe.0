Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768C46BF
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEudugo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4CBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699677496;
	bh=tgQkcB/w5/G5Z8z4dX5LqjG0tvV7CYjAbTEg4+ICV4s=;
	h=To:Subject:From:Date:From;
	b=kEudugo5VEOo+QY5Zp1OwqF9RV0owtpYTjIkmAu32NAFe7Tbk5hkIABRgwQpuXQ4q
	 q2steniKyjHRWeyWICq+TQwv+yBCjTttt4eNcRW4AeVLWxxOKGgf7buPEIzLQOekF3
	 jbTJfN57E/velFRd6W80XkMUiIb56hSRt3w38pGZtUYMri5zKvOc2vo093iwrdZE76
	 9G4XWkJSuT/gV2Pf3b5p2GJljKCcZioYB6MkehLuocCKhD3LRECRwjzEfwEfef2hgZ
	 JsN/rLHnkae4sF5+BdNn1Rwj6s0jaFXUMV/rrzABOtwDpbDZsDwZau+oTkvHGTjybe
	 36ir+bx+F5Gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8644DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967749653.10807.1771887141982214671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e386096b4f682dc9d7cbacc319964589af13d09bd7ad93ec42b5d259587510
Date: Sat, 11 Nov 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699677496
