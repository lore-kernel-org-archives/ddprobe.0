Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2CF23AF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D40C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677695765;
	bh=FmGQUB9l6Qluc+lQq5FygCMycsWv6sOXmSmKlIVcV1Q=;
	h=To:Subject:From:Date:From;
	b=l7NyBsSkZyIzYtun53IzpW2sgX0g99LiYLeIBLMgeEIVWfMMDZJHAj1GRJUKDW63q
	 d3AvhkwZGpzC4dPQ2KlLuqICK4jR4TunSk2RvzKFlJeHeuXKRy6ORQ7BZflGhSNU9k
	 +v/U8SOcfj3qLd3jNh1QyS9rtDbz1NcNoSdmx/vDoYeT4XWcuLCtd5rLRSH7fnO6g7
	 fxhJwbEK6/hhZnyJO6PQLWRpJ8+RieWlwlhy98Z+AsoeVwvNUKtwlJko/gkt32hdbl
	 yIr0Z1jCtDwWDRvUx6bUk8ki8FL295kExOZhay+Vkxvt3rwy0S3GCCjdk2uOA8qLmP
	 BFCePq0estBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83D2C64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769576573.479.8183164979429651459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a144d11766b87f1928ca6ed0cfd993914ca34a6f026253caa70af213186aaac4
Date: Wed, 01 Mar 2023 18:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677695765
