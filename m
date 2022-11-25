Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCD1259B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70772C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669370454;
	bh=4420w5LLiTuuH2TAM4dMjvdUvPwNT3JAQ1UDfmXK9sc=;
	h=To:Subject:From:Date:From;
	b=mLut2/PCUmuyhflUk14EsBwSLl0RbwSaM6gtfhg6QKAbydfSNeBk1Me9YeZCrF+/K
	 Rn9waiCRvr7/F/rg1JZ+lsU/Bcl06smYBBHJX6QVpkYKH0o9oMbOUTAN/2Bp66E3aM
	 RAqnQkHupqC3v3L3nZ4V/1rS1lUTmIiwiGnpqQ7tjpOT0YpDsGRvLRjG1F8B/Nx7qO
	 pGgTyjdKtmdihXonM6HoLJL39JkgUZ7MPfWuCyH/E0RcCtDJ9RWkBdd7Zh3m89kVRG
	 qCYZL34gTqdSD38yVVbpnVt5kYMcY00PfKVd5famjPQI9BVhOs+l4WOxv0xx9YSCDC
	 eHfMXfSKSmMbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54477C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937045433.26654.16487599334611472153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c979c4da2973d15ea2c454fffac8f3745001956c7e66192c5a0a3c305c83be
Date: Fri, 25 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669370454
