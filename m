Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695C217FE0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB965C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689104228;
	bh=O4GkdXOSnyzb6ssvTZwgp34FfW9UqA7yS/+XmQatAXA=;
	h=To:Subject:From:Date:From;
	b=QsC0fURrUfObSq3I/vwNjBBID5LLDOzexjtf2ujSq+h9HQtZb/fmaUs1wF/b4wnVw
	 KicOqMaPuddqhY6fR6bYl4PP9kF7isLBYTOdLudSi0Y5i3mXn11DDFGJI2sraoWGpU
	 RvZRbMgSc74h0fAthGlPriruS+Qa42DVWCk2IFEhdKiho/XxQDCu3wFnEuokbGQzbj
	 XTq+Yd6ORTyWgoz0d3nirvgTv9K6hdKAGM3g/mh/GUaFaybkW4HJQAVBkhYlVK2daW
	 pa/HyX3S2b5Cnjg4UxiFMg4Psasn5v5Fhi+WEx7P/KhBYov39j2D80sPFnTbnlt6F0
	 i2ZRriEv4BBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8FAEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168910422870.9464.1312826692496678686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37986364b5b57adbd019138c952e71185045e65f6e479db30bab2a516cfca39a
Date: Tue, 11 Jul 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689104228
