Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4B9A49D
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9201AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671825687;
	bh=iGJgDvHyGzN/Nez+N3vHTUkNPnYKfTC1Mbya5sSIcdQ=;
	h=To:Subject:From:Date:From;
	b=EMbP5d0JoZqb/h/VT6ef6GAvzBB5g7iHkfWH4u47fZ98kyG0o3JFJVXdnK1XF2wZV
	 wWAzWhgj9Rt/lxF2pztt7Ed4QyiR4n7gK7pMawtt+SL6teDDh3RpVaAxozGTF7Nc+Q
	 EitBKoZBdVlPqvfTGM7rD5ZjG4DinSnAAoPIJCG+1SCOyxiST3TIMVNZJYFS3ZA5pG
	 yKYnSXqVX68w4yKDSmNLcQSdLPpBBFsU14dfAcOwt82tHvjHVJNENWLmOzqNMkERRo
	 wFD6Ea++g3Er+p0CWhm/TOBxEZgjjn4dW2JfJLQXSzv0vLY4IKXOMV0sR7hY+HyMN1
	 x/u/9PnEWhK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0D5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182568742.7683.13465245570258725008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e55df132863c5090497d472415055debb3424868aca7140b891ffd3b6a1601b
Date: Fri, 23 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671825687
