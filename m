Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5AE33D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71922C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665326453;
	bh=qaQNbT9gMl6teDB16Ji8li8UZ0uscUSs0dU2kt2Ne/I=;
	h=To:Subject:From:Date:From;
	b=DlfxLKljohPrSOeeQTtjQfq9nm4azKgJi2zV0FD0UYYzuE9NB/2gtuJfh6TngteEH
	 h2fpUUjhjVs/Z8k0cJvq7m4XVoZo8Fgzx0Wz0fUqlgfdBCV3THDZDhIJWt++k7iEh4
	 9n7Emjmc2rrg4gPHND/oy24EJsgSZ3ysAPT2AHyh3hzzLJhDUVqJyG30mFUCH6SXgw
	 YEVkLBq0kXZmgcCBxr3pE62Jvl5uJJNrhzDLEsyOnY5PX321Ybg7jNAU1rhc2Bjuge
	 OUeixdPBUvwNXFhwo5bEBJul1ToDBnGqI/NDxAC2z0v/74/Txjg2mzgTtENPKdjKj2
	 pCdPOOjuU5wVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FE1C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532645333.755.12520551506024092498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc86aaec8ba013168d75f41594489bea4f7254559aa949cdde6e5162bf3bfdd
Date: Sun, 09 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665326453
