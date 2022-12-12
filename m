Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4571854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86746C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670808687;
	bh=jM52K1lFgScXb8Zfb747sBJfdSYPM3XpNgEND7jetr0=;
	h=To:Subject:From:Date:From;
	b=Ufnp0Z0I0Q2gYbs1pV2rgFaQyK93PkpzFRMNmO1ymYTZHaqPCJbcg1qK1PPH7bWrg
	 1Lf1fA6E+vPzX1MSSPxzbmZj4zEC8ovvCqSPYBDl1ay6dPHzAFyiGkDWqg8eykmu+T
	 B1yfQVSYT6jas/crUKwocxkq7SVQtbqbCKysX75Itj5Eaak+BXa0zSJXM3SNP5LyTD
	 hmeBRtLfh4gr7wk34SiKIBY3bkBJFkB9I5My6UGCq30T6hBWc8mtszv+f8Jche7me4
	 Jvrvx5lhrC2wYXwSJBy/lV5Q8UWwHNHKW6ZoxgMMMeDSKMJsU/zGqoyOGutNKKtDG3
	 0QstXhcE4rEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6536FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080868740.6029.8305764844753261717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c46fa1249342d030785f054e534cc8dfa1053815d01f909358c24c2f018dc39
Date: Mon, 12 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670808687
