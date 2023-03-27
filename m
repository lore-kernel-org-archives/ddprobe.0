Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F3622
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1A4FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679884926;
	bh=4hAe6hMLBkjImheaBaSwPKF3zt9fgn6suwptECmY5mA=;
	h=To:Subject:From:Date:From;
	b=ec7W9o99YqgZ3WGyelgE906CqTx1uKa9XdrdJzmW8GQAQTi5UMuYb+Egmx+lfDofv
	 sDVJf0KohaGpHitStxYsdrMygopDs20gH8zo+ojDjBdqvfQ0bNh2PaNwO8owsi0IgN
	 k+wtg8LP8xOfKHenqtqUhWo/3XQ4GA0b2ojkZcC1V+r7VqNk0EpubktBySfvm8mX7t
	 NlbgBo1Lw3vRnqFg+Qkm71i9kEhdW5AWc3AkjDkY+jj/tZhj0FPjCWTzXd6R/XI1oU
	 HPXfP1aH7UM9vKTs2i7u52YE4OgXQSk8ZPGOpkVLOcBOysY+wwWjcWowdHVD1VJav3
	 BQmBzU/JL847w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E52C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 02:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988492584.11444.1177827378843241238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b8327389d676e37335f95f727f9afb547d17d0e9cdfc033c18451a2ff1e6b4
Date: Mon, 27 Mar 2023 02:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679884925
