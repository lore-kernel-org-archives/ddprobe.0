Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63739D514
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 11:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6EAC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 11:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696420568;
	bh=lDrJ1Am28mqJYA3qI7rbgabHC0dIGtUFpIPZnB7lZIQ=;
	h=To:Subject:From:Date:From;
	b=SdNwsxSbTr8/sKPjjXS8sIOM9kFfiflYQufVdgWjR83TZesOrYNvlKcnYmXuJ99Ph
	 cDi8KdeIjEgPCkWWz9vVjftITIpTemOoQqIFM+FNHQ8fxYDGFoMZ7Wf7pewUasti0g
	 +Y6C+ZUWQNmWpiki1k6iUXwURAuFY05jyJvOaag6vqBjb7in01wE8qXOsc8lXCMOkB
	 a48OLsN6GHAQ8VKynEWsCmMpby6cSMZO4NiTjDRXpCw9KuQgLOfaWTWcIH/taJwpEP
	 HQS+uINSDEXitJQKxBuniVPfFIVY4Kcsshhcv3S8XhtgyHRPAgqfh+HJxvCFXHFd8s
	 UqbqGH202dLYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3909E7B5F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 11:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642056872.28663.3814856796335169486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5a1053215b68d550f4defd51061535f03bea615b42abb3ecd4b65028e6a579
Date: Wed, 04 Oct 2023 11:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696420568
