Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C020228E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E90EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666176053;
	bh=aHwoLMpOCENYDKaFgdkltQ1yn08cAoHWoknC2Maho+w=;
	h=To:Subject:From:Date:From;
	b=KNGNlmOnaO9DEVU0tlyCyWA/fg16k2ZZTJRImJKgzYlJPKMAxvaGwQsVFogx7x6nc
	 0gqAnBMHjdWmNXznO4VJvZxwxHHLiR0GnbhaxtU1fiDJfO0k6I08bxAZkOpCUWqqoz
	 SZ/7LmaiQsMVKmOsasDVyvMEfaWnwFihw+vSsO8lsrc0NtSBBHVol/5x0sKEpfiNos
	 6X6iIDGL17wN/SO8VoZOThJJZp4bEsT+SleTEd5No7C+I4A+DOc2Mq5iIqsQFKBr6P
	 xXXS/KOg5EmGAuZK7poDdwkkEQY3Pwb1YlGFRV4yvgijNMPt/nO0JlWY0PuI02HTWY
	 7FyjwrP0RF83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166617605333.25957.13946945591821921533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1213a968672f468e64d35329f4506c68fb8664af975b1dc9f74f7f8bb3fbc5f5
Date: Wed, 19 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666176053
