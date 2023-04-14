Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417352115
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE3EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681483986;
	bh=t0uBT3CW7jGmhwBQeCLRUaZ+CkRU5o6hgfqPsMDbsVY=;
	h=To:Subject:From:Date:From;
	b=QQWQA0ZYvLz/UppW0zaWupJMmgPR4v9GVNT+2P6HxY/q5bhTySOVNi/V+Q48q5KsL
	 4ZC9702bIyc/Ihh09zI/lBlKV9DgJm14eGk3PMzwrsPL3r/JfejgHtFimROhFSt0Md
	 gTYHN5ts3/uJFBPzCb4G+THTQa57NTDDPR4Xq9s21uOWVqbgfduhp81ng+XAevgdIq
	 E2EVJEsPPEJX7tedlIDFxBHog9M/wsGfnoAgRBdQhlhkQVr5AW5T6x+AoN3Xd/Qd/B
	 YCtuNYHDvpkRyyNtKhSjZjoWkY8pPgOWPcRw5mqQ8qi3LFDhCwgNVDlAKNktFSaMTt
	 Parvfs0du9LHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA58CC77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148398581.13509.5146283275357062443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d42a882c39567956f73184af2f1e9a48cc7b12030380e27628dc53bde37d28c
Date: Fri, 14 Apr 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681483985
