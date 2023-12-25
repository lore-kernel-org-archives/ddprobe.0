Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A1910948
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR1v5grh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EC1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703462896;
	bh=5avc3AP4SkV8+Sm/55jO/WQhJG/gEuzwLVfRAwpp5Qo=;
	h=To:Subject:From:Date:From;
	b=WR1v5grhJAdmMH+FNrTcnnnX6W9nUAfsk+dgNFIa/AVtqw07y0qZn/QT+jOKj0kRc
	 86bmaC+1iJNSBqWdyiqAnYSjegVtSCZxbp3GqSPfq2MofIStmAzkG7CB3GMAKqbzXB
	 kLiYWVagKBykxOqT/bQIT/5MGSbhFDF3FYuyEFrq6c1XAYU2n/SxkR2Op7hhxtPapV
	 2L+fL3ewZjk3JGuLXhEksj5buiqUZAyWFC2WCSKvxRRHwCVMuuHvhBAsvSMffJHq7U
	 T67jPtF7HBifS9lmppewX+6o0eky+aMsDSO1xo0JZ8G6VP7aGZy1xfdQ+Mgjc1TnW6
	 pYmu0tC7VAooA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB3DC46CD2
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170346289641.14205.13104289304864518574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df50ce4692fe500ab24f7ef4860615f014bbbd107b5bce4fd0ba0ce173660a42
Date: Mon, 25 Dec 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703462896
