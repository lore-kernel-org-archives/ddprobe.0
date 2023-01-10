Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD92BA93F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D01C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673374887;
	bh=MUTskOLPvS27YVEE66sUiKZlNt/C0AmCB+1M4+TRU6E=;
	h=To:Subject:From:Date:From;
	b=fXKb71OgF746SY0P1wh6fowIj8/Dc9OWBqvU8EJzjFIWbjbEJ/JNgdxHXqDHKKUcw
	 gAhFUrC6bwo9NtyuytrwgIUw8InahnZPULVuxxMTPYcWuFY7RdbxWZrr6EOL7n1Buv
	 1XWvwjTFK3boGxUYqjxjeEdbfNQ30x9qWq4xeQ/91jClADcqh549Pt/4LCgZPjDf2k
	 m1WdXJeaBXBtIlIHJKGOJIlN+nBITuSiMtLDXdsruY5Zc+w7IufOvlv27r6KJZJyes
	 TRHqf85Pf7nMurwlmLp/t+buX3x1DIaSYN+Ha3lKYECtRFXAUd0uNdjmRq+s/37dun
	 Q9V7a6L04kbVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3ACC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337488743.27885.16866869305664550596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38db617e78dc0e802b36ac405e3379c90f44943de945db31db9500001280747c
Date: Tue, 10 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673374887
