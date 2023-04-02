Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C227E
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED175C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680393906;
	bh=82jmYy87MBHg5Nvn/U7sXVP/yiMoXoIdHLBSwxTr6Ss=;
	h=To:Subject:From:Date:From;
	b=FygMhfzpFUrG0o7Jaax1K2V/KKU0QpIXrmqBpaa+ixKPCm3MEAZRgzXkJ0kqdoTkU
	 8jsh/OH8ooc7uUnsivfFDfY6ZSvdRnWhbQ+zUGJT21+4hKI6VpR8XcJHkYYsZU8woK
	 8fJsP6OUKjNOadUbR7/jUNLAIrZ7eaKgVGMr0Eth6//Y66OcPHF5/yULQo9fJGpwZk
	 dIwjqJ9x6S/mElYD4VKjVApxmSCg9FjafRYQmSfRQiNhtsRwT8GqwgeFMe8OAwLVjU
	 CYHsND0+kE2FqyIxemt1HUaUnlGPxeSIzVPREOgTFvQoc+wMbm3wtsbph4ClIH4/xy
	 NwE5ZobQKOPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0771C761AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168039390584.1936.1349861298624953062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ba29559638bcc89341034897642729136134f7d1b83eec7cd815790c36c580
Date: Sun, 02 Apr 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680393905
