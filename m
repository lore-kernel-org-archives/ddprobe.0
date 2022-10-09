Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B791876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C57DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665337253;
	bh=KJd8MPEEHRgaFbAGAGKfcAlKFEtN9xXFeXBbBPGMf5g=;
	h=To:Subject:From:Date:From;
	b=bgutvPHI690ZuZJKOnuZmpdX4r8dDBBKwzSlSz50dhUH+wS+gWZ3dIB+jDWo2BuVl
	 C0SxnSUeVFduS7fxL64lBPazVtN4KIJXcatCh0nHDsZRlLSXOsoTlEJHl6s6fv+Xwq
	 p716tnWX3aPjgwnDY8ESitndgHGtF6aAagxclfLJ0kZHHj7QfzKL+sVE0uXdW4cGCp
	 XMPEtMnUBzqPzNaglNKKTTBvr8MIT9YVKN4yyj67LT+svenqD8x2ZiIKTEnG0GEPI1
	 gf5v73k+5ExsKjkHZDCShUmez9TTf9z7kB2rgsZWqHcKB8Lh+ZtsuBvuDRajY8X6gb
	 4ifhGKGAeTM3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509D6C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533725332.29517.15881104023337219425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb83125314da74333b9e6db0fce3c283414a902866469031d01c9a1a99cc662
Date: Sun, 09 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665337253
