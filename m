Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE9920F3
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:34:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7903C4339C
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685511246;
	bh=LOK0z8qFUZ9ovecjA1FEJgqSKCnkws4XDuMIe8zf9N4=;
	h=To:Subject:From:Date:From;
	b=llSJRbks3IuWt1tXDQeGqgTUUTroWmfHTqChsRjoqoa/qwrIl9CLPbeLkrCaZcNba
	 8q+LtmGGUO9QRoqg72NwPneKkBSnHaIxdSi886vj54+mrCoZ+B14ONSrHVWaLhnakh
	 h43tGNN3Xv7+CoPiktF7alk44Pq33GgIukDX6QM+y1M8bYRkcvLFlgq9BCWY/myodf
	 +3lO5Vi/B12k6Y6hq7ELB4ZvF5rvpRfhEYViO8VCcQqBP8kKazmlp0UbhSm44o25qY
	 isEOMfiNX/Ua00dsaXf1hvm/VZ87BTuBXVOqbIWVSk5sP2fjg21R/pNRTj+549yrKT
	 b8BcUlRyWEQ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C66BFC77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551124578.10639.13421430396203026262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ea8cea450c3569df183ae0f530505e62f10010a06d39eaa60dba03078f7926
Date: Wed, 31 May 2023 05:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685511245
