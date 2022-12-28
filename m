Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED8AED0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8883BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672210287;
	bh=0IOMxBSTizJlkdAkciokereb/f+XR6epd2dV/Jlebv8=;
	h=To:Subject:From:Date:From;
	b=CqVjo7jzOvbIvKSLbZIOHexuM32rrFXio901dTkoDqtaWPhpk5mk8FDLz8RWERg57
	 ZIc+PvCjd5XO3uxAiVfVYJ5VnDtj16cr0SrndzQ96WADbzsd2IyYhpVJzbFGtHVdrY
	 mKQpmTRSIZzCm7wv1+LfTmf041XuF1qNZHx/J5gP+xBQmoBFPoIOZJpglXNRxIMwW6
	 PpTiUZhmcDSVJzR5bs6yXfUsSrTpKJlzNrawNFqpIu1nz5sYnNJsExsepejIIy2ReW
	 07ZjyoRpIrBOVE4RhkR6x+5f6f5zmMuDcNBeJ9qVPPm3tyZZlAVkP/f1pTzXaEro4T
	 gIk+Il/wncvjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DE0C46467
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221028740.26782.6224455953595235766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f929da118f21b00bf549c243d0392761c2961f31d138561a6c014aa2097187b
Date: Wed, 28 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672210287
