Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AEC7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F51C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672983687;
	bh=X9UHN2pnEeEoaKvfvDbVfAE9id572y9js9cHXENv1gI=;
	h=To:Subject:From:Date:From;
	b=Wd8cCqj/AuS6ioalvRVCaS2kqSaKjZNGB7UO4xQTPiQWDwX6eTwGjWBKSMz+a7aLF
	 e876gJ36Ar64t0eURTLLmHbOOTWOxixgDBD1v13XYrALnCMD/vdit+T3XIbFFiiL3b
	 KedrnJCgAQ/56iuYStpZfqNXx3+UgwZKlkPq8bR9AaPqsveevx0+uYlZQPSHleXlfE
	 opJn0zzg5mxhGSzFHbkk4nZeZsyCgXtf9tuUJhVEa4qY1t7u14bYKxHw/7uazRro6U
	 Xx1EkTUtJSimIHr+gcAYXOuj/FpwuOtdaniL6vqwYidaLE1axZWm4jxfKFc8Dfkqfi
	 /I+dR8c6L7qow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F52C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298368739.31987.9586962866573040983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f04698192cb70efe495b80470b45d1912024fb63979b6f332e75cc4f72fe0e
Date: Fri, 06 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672983687
