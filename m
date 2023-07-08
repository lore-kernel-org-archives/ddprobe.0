Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538521C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB787C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688816228;
	bh=BcI3mfCjDtsCQAwhccHyZ1FjJHGzSxqHOR+Z71H+4FY=;
	h=To:Subject:From:Date:From;
	b=YNO1Jq6uvVOBdrQhzOdkWKaS+8aLq2lVZ8RRn5jc3r1G4mLPR7OdqhNJMistP6uxe
	 clZMi2fW4vYDy9ZKMogFKtD/UPE2P2Jb3LL+AKPcQ12up/EUqJbZK26jq9zs2mv7dw
	 XsckAnGu3TJU82OWJxdkKdeKsGnaHGkVcp1g2J7IELnP+bOk5tyHhgt7LDIXHEHB20
	 wol/SyR1n4Cvkw4L55sh4k9MPvDr9SGzqJfanJN1YX0W7BkFX7rA7GWJXXGtLZdlEe
	 dMps1xmy2AMw4ldkP11moqfgXoqr3HuhmXRmGHVK0bD+oT0FNiUUo89WTnQxTvSjH4
	 Bjeocqz2u+aKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BBEEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881622866.27783.967267826089060104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234d09003a267cb415c8458126dbf4b143f79ddc2938d7183c0f50384bdca297
Date: Sat, 08 Jul 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688816228
