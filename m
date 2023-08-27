Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701E980B
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9583C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693127048;
	bh=6sjNW82CGIEPW98JUuDTlcQU1w2JAz46DKQJvD93kD4=;
	h=To:Subject:From:Date:From;
	b=ky77XTkF3rDck3Lv+Hy2mJbetO9TYGZqADfTAAhKiM0Avh3ohXDLcV1fycKRQH+mR
	 4mRIMG1nKtov/dFbr2D6CqgD0ePmKGeGoarUp5XybGr7c3SymkfGMQgfgFowwZ1qEd
	 ZGd+jySlsPnFuxsyhjtCnZ5MisrCCZ3yEQIyobxWwhGrbQkcHssgDLsCUGVGBoOemQ
	 /F5k9YZuQr9OpyE2KQbr2QBm2nqWEecta+TkrqQo8SLCKgZZ9bzX+COmsqkw4NLA1H
	 1QKc9C8oOm7jzM6d5o3Da3g8P+RPiQUdfDYjguBkJeue9z/YfTRajUTkyjm+UM+E2S
	 R+fYFheqDePFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE146C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169312704871.9486.820170143364862962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4158aaae53a369a4dd8f8fdf7c428908dbd3f9f53d45e4650ae9264d6f570cfb
Date: Sun, 27 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693127048
