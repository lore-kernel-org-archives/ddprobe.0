Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A5F15B7
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D169AC4339E
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685142365;
	bh=FX/3IHXnH6QY7Ry2WYbCs/YR3ke2y9OtgAgkbpd2iwY=;
	h=To:Subject:From:Date:From;
	b=iKIQAgOoVMrEH2U6YqbCmo402m7BnxVYlFzJrQinx35IDdtC3fzZ+68A646l8Jw58
	 8qBchkgZ6TCG+nEDEU9CRHO55Q0DOdMGYTr21TXQIXBKGvjUPZybrrPoTdgTJObSUu
	 BqW9pIKiXtd7gZj3eBbf0Cq9vEiAfjRuqVt2phuD7GdcAwfGRhQWoozSM0NIt0+H8a
	 AKQex+HA0IW+2bU0jK/vA4XfXrzoQTBaxJjS490nmxCDwegWeCQFzz89ax0f3xMlt9
	 KdAKzF8Pu3xyVsss47ptKJZuLCZiHVeICISm4CVBNEZ1Kz8WJSgAnAh0ptxJNroX/Q
	 C9klZExB2FLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5424C77B73
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168514236573.27417.1877380166213608227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c3b23dfb1b3e79d592ba9fe4e9a442985e0d5b0a5a0507c754ee26b4b6cb66
Date: Fri, 26 May 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685142365
