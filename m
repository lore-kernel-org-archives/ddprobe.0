Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D629D321D
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA6DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665603053;
	bh=f9WdxCwv9GOsRfA0DpboGiA+xvLgJ38rKUDIr19wX6c=;
	h=To:Subject:From:Date:From;
	b=etOllX8hnAFckE/7kEoNUV5mtfbuGlX9GTeywiwT0AV7EpKnWK9LN0+nfPcCaQ1SS
	 V0YmSPKQA3s8hDJbMYS0kEeazDF9F91PXsMDevGfxXpC/Xs0FT2z1ViQTMctsP6I5L
	 8NGS9FjquQ01IYmr8upE3LgD6wPJmX8cqizQDwt8iRaZ2dMTWR0rajni1dE+jegWb4
	 caFzuktGqNsrx+ejZ//lG45bLTSVuBXgXAtMyUnurwoJyRxGh3Kshi14yFG4O/KouU
	 Gl1dB0wSD+irugvVjx9vPaJq6P132zgBH2mc9A47UIr8fAxzDCapgINP3HSzCapM59
	 4Xd8TZ0sta9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA56C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560305337.2061.645092633083793716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abdda9a65549d5ab94c17972d1f602071fcf134637863e0722f9ec68d055170
Date: Wed, 12 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665603053
