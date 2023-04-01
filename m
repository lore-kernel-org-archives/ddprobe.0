Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97D3C39
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 15:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C82C433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 15:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680363845;
	bh=lbk0uagJhDjGFRwngvtsjpKFdPgTvN81CfEhKhWtyyQ=;
	h=To:Subject:From:Date:From;
	b=j1MLFml4S/DgWggIxCZQ7jjSZ3ExL2F3K9/Bqk9euJJmlnsnvLwxplmzd6JN6Jo3t
	 S9q+dL9Zq7nYv/apCI+vQdOg1g8zGusbS1IZzI/LmgQdmyJ1YOvhgpTb8qzuoe2BEq
	 xugEVbeD1Z0hEK/nZlj6IiEgIyxgWGeZzUoUE5gV0f7C5LOrR2sYMrB1kpx+Q9Dwee
	 Fs1q/hPt55ME77IyaaF9lOnO7g+pvLdCA+MaVjdQU1oNt+nam/f++jw6ivz2dbxW3t
	 3NbS47ijpujL2xnIXCcmyPRyAbyN5Wv/YhXgHpaH5UJWJjrovQRGowgr/yaNtxj2g4
	 HqG5ykwFWv9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2937C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 15:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168036384577.19340.3513800024543347746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6582604c2c843b96815822a72b9110c29f3e37800ac4ab9a6fac87962232bb19
Date: Sat, 01 Apr 2023 15:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680363845
