Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FD81836D1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717000463; cv=none; b=sKjMnmiJz/+d6JxQwRZ2mwj5PIfg7kzZwHGY83RSGUoTkQlsilrIWJfhjeoKMG2Rlh/4JSCBGpIdjlcKlX9EArLCG3pI0SM99bJTP/c/JjW1ay7aXjGeoRJNzV2KO0eBjYA4u2PP8zG4kZ1XM1iDDM5Mb6LdsP3QK/2S7MM6EG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717000463; c=relaxed/simple;
	bh=NwuGHf+rlmG0EtmtaT4AuCfnE4nXa/Nx7380PxlzxOE=;
	h=To:Subject:From:Message-Id:Date; b=pE5faQxeMpzS1XOFMRaluSL7glRV/mAxvkAm/65vJEVXwxBGYhdd9IVCF4dE8PF8DduMF+yLEaR9aDZHwdO/+XrW3FwUfAuBTffDAWhUswLkwwFGkiDU8nekGGXsTyV+36BfaJDDnWra+lvAsPQJ/ELy652TK67Cfzhhest3EvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DesB1Av8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DesB1Av8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A1CC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717000462;
	bh=NwuGHf+rlmG0EtmtaT4AuCfnE4nXa/Nx7380PxlzxOE=;
	h=To:Subject:From:Date:From;
	b=DesB1Av8mnaLmr83sD3W84pkwLZtyrKQJcG8aEBoAIVLmlk7Ky84iRpo3h4dZUW83
	 NZTmivi4DgRvijg55bZSsfNgg0sxuTLfZOL1rq6/ihJKzEKAj8t3UD4uYalU82cWBA
	 d17ietNU+YWlC9+6nHaaEhBDZJaD3jhHqdmQyd8qNU5y/9Oo7WMbsY7u+zrTQXBaSp
	 YStLetXE9mAQxupsJ+QekLeCSgPrV8nzIU/L4EqOzqwxTgXqcVQ5qzSEH0bNQKBk/9
	 qv822L6UEYEKyZ8dCpLkENqj3XlmcfPdZmRcirUSrUdMJr2isFNB+2j+ffEi6t2h4i
	 Bb3XbbVgb4VdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0209C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 16:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700046277.21725.6412178630739911272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269bc732ac4f97bfebe1ea430268be053a710c5e4373e8285d4849fe607d9ce8
Date: Wed, 29 May 2024 16:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717000462
