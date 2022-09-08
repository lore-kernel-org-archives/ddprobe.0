Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6C35CA6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74628C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662664853;
	bh=O5CI+rDsa2xT5YLk9BhQtKNctDte7IeJuK9fqGpdh+M=;
	h=To:Subject:From:Date:From;
	b=iSLvo3rMvmW3wT+Kjt/lEZut4t2OBtcBYOt0F25VCGUpX35dNpNXJgpkrPertACVI
	 NIYzaRCmoQFJ7L3jVa+KE6mNDjTBozZffKzWxJ2scx27EZXKYv15lLm2Z21ohVfObQ
	 DoXf2xV++4Nzl1Xlcsnysit8f9RQsvhl2FyByjTW4+WsX3TmyziXXC62XqmUo03xMd
	 mgvg6uvBnOSYBqDI7FFTzyjFB4UreZTj+YnevNvXKqO4G4fy9PcvNKqWMT+CFwDtVY
	 HcBUN4eSWN4W9bLilOCyJ2FfFOSlnBoePw5insz8wV/bLURKeRkImmMlAwbhwVbVgH
	 1cgtCFV/umhwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5685BC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166266485334.29674.12421686559661861017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5844880b46896be9eeb2a5d683750d54d55fd6f46757fd95ec64c4014b9d82a
Date: Thu, 08 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662664853
