Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B541CCC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691832788;
	bh=hWeuvIdhH4ie+v9T+BhF/rU8uGxYcSUca4dEh6d2SN8=;
	h=To:Subject:From:Date:From;
	b=Vzd1joh9gg3lDzAZJjQPn4Vzc0zhRjarVmy4sxbeHfNdYz0cl2hcuLGe2CHL9NyoZ
	 NaI9QmLm1wHZvYp605l25WZVAXjpijkjTutXmh0dVY+/N9k3+MQ+q0738BemTYM0l7
	 TUGM9SkUzxxap4lYwmZJK2ThlGWEZhVkV832yUO5EchxKraJiDwOi0a1njxhS8C5JL
	 M83lRaOCwbhI8IFnqbOSuF5/bM5PBHUKuOrQdv0ytwuSyWikXxgqr7t8YE5xYD3hQ4
	 VEOfACG0A/q1vINs8KbNzkODJWmtT4C2c918+7QJu52ZWtNmcGuEo1enC18qsnBCXU
	 Z3OjqOylIxV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B987BC001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169183278872.3416.9723459476563546317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df64f15219765e727d0c8e3c489d872d191f382da82d89f960086fe56584fd9
Date: Sat, 12 Aug 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691832788
