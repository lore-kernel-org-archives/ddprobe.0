Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A67BBA36
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681415945;
	bh=kPBHAUG70mI4tNzsOn/ldb8GmmsJ8/Mxag5gkKralGc=;
	h=To:Subject:From:Date:From;
	b=AXxgjfdZcIn+2yTi+lNsR1s1CItD1dxe3MV7TmcWgQzfNaWaMDWjnE6PRYhzrCbDV
	 LwDGAlSi4VfFib0tA/YJAL2OgtHbYk9ZEFvWmGgXTlRKe1Iny5fZX4T2qkV9Xi7b/e
	 jw7HCJ2b1dQxnqvrdiJiKwNs4a0SyQMYjCvDfbl3Qbn3RXjs8Gu23A/M+uJUmDzJyR
	 WqrxskPwYjDIhrWu+WyBouq1EIB0GA9klNtzvMr2feAYfrR77CMzQhEKghe89Cwlm1
	 YOjcW3xum81bTOmhMqRwphkCnxYETBcnK3Uohlw2MDrHeTEVidryANt7M3y9XK57IT
	 RVQU7LMrZ9W8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB55C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141594576.5538.16839560135248722991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c62779038d65724c8bfc3b9a7e8b40e35eb97b26b042172c388ae8ad1edc26c
Date: Thu, 13 Apr 2023 19:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681415945
