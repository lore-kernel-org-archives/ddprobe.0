Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B4A4417
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1647C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690869128;
	bh=rXiSow3HXLMIFAR6VaFaDoi7yej3ZmkimWcXiWmyKvY=;
	h=To:Subject:From:Date:From;
	b=bBoR/EBVb+lxUZ8M4HC/O1PoXBXhKcptoD26rEgaYFzf0C8HqGJ7unr+HZmsbWofy
	 blt/XkR8p64GBY16Li5W+2mvF2sXXeYM7f8xqIlwbiN0Rx6nXHIUbFzlPIVRud1duC
	 3/GPtevJ2m/t3EIpg621G33nzVHQI3vTK/sQshqLZblgsPYiPpGd5wMh6arQzejj5I
	 L23Q3Yx5hToIvnp84nv1T2iI2kLbywBtkInr32erIqZcgywbooE+Hug40xIoaFR8Qm
	 RixHG4regEUVseK2USl6q+qaAWxhpB3nPoHhcGno3WINkAxQcVuTpl3KLj8b5e97Mr
	 dtVtmlhI8dNCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D7DEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169086912867.19949.11182181533957498882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64787aa46b73244a2f64753ab7d39904e73fdb969164dbaab74e121a460a8d0
Date: Tue, 01 Aug 2023 05:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690869128
