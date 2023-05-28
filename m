Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DC37C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE230C4339B
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685260145;
	bh=yLpnaUTBn/ldaon4iAiCXQ7N+zn3TrG9WTvNErJZmmw=;
	h=To:Subject:From:Date:From;
	b=kiN7sj9Wnh1umcZzWoFi8iVBJGDZ33VGpxWE569kL/aqjrIe0cUB4R5C/gpwzL1mf
	 eZe/18SRCvo6In8xS2UIKoxF1hBdaRt1mX3VzqndkZqX2+ODPQAScOfmOrClzXvYBz
	 1UPizA4sIa5Mk9gkdafI0OEO5g5ZutbsiWIaI3Ln7YqgY+hmgKOVmY8gBBt/1FaiAx
	 1CrwqUnoBzKK3fgVLbwYf0lzuqaSHi3INlPCu+oTDCWYKSGA36Mlj1A0v+VoJHaZ2C
	 Hay2yT0TVz97Zlio71yNPG8/HzYiyo/4RI6AjVcLWUHdEoA1DV8rTQ210CCyyd3mip
	 FVKTGPDWASgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1904C7EE2C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168526014578.19903.12361890949145078597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd19b1102da1b44e25201e85eb59045181273b0f74252c76e13a357cb3a4595
Date: Sun, 28 May 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685260145
