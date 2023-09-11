Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3F5C8E3
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C405BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694433248;
	bh=AQHwwV5ob7oBV/U78FOCU5CoIiOuTZVJ+vbNpMpHQCg=;
	h=To:Subject:From:Date:From;
	b=Bhv8295ArgevQgujWRn/lJuc5sxAaR6yt8UhJt7CMvXxhoIyzaA4KtYUDXQg1j83v
	 bcx9JWziK6oXK8+7MGuFiwIz2/AQhlFZ97f95e0RIJcBUbS3a3tC6NZpE+s5bHt/wl
	 hg3JJ+o9cf5HVrg4Rs085uDENjeZ1uWRI+dB1LeuqRTiTtXN40rmGB9gACITjtVPqL
	 Uw3Pmy8cv+L1KaBkk6nj2/Wjmr9WYSyIB6zYaR+6s5QIQeUNrQWWdH0Ob44/RMnITy
	 FkLcWAy744TePycRv++weTpQZCsCQ9871A+EqNKj/yrw6V6Pd6O4IEVs3g2EljdT8s
	 1dtRIW6QvDH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B6AEE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169443324867.10119.2039743410690249933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45adb28653e34ac8436fbd3307e182e552a32742a5a1abeb7af590865f91711
Date: Mon, 11 Sep 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694433248
