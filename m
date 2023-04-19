Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB8C3C34
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15279C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681908846;
	bh=hk+7iPaX0IiTr2ekVwfrKBuYtD8DFvp43phOlWwWyt4=;
	h=To:Subject:From:Date:From;
	b=VAMeK9srG5nFeeqpayGfpy4salYUMcnCUh3AYOODKfDn2LcIToJ1BaPJ+CvDLfEM2
	 zfyOTvlI5FR8L7fQ1IWORa+9WvPuRoptTYXDHEEgvSd9ksSap9PpFD9Yu8AbGEVzvf
	 vBmqPRN13h2E72QUZ0iAW3d5u9NuCWTqoB0AXfeM6JXQSkLQ1PiuHNsnIyaiRxEf5x
	 3tcxS6vBVQP8K+WonpAFyzh0xIWxLg/XcBtz2pQc3QU5edFPSmf0Hnh+JWDaCYsIPK
	 o0LgI7IkUJ7UDE1PbjJwsAOIc/Y4QuAVDqc4lLlrLWPv86I4L1I89brdV3EEur9Tk0
	 SodSRMgDe5Ipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B0EC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190884593.3371.11119857447317765307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719a3afff7ba09712fae390021bba2383ea67080dde6b1399e5956b26793f226
Date: Wed, 19 Apr 2023 12:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681908845
