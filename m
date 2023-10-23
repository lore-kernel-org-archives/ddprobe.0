Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2626D79C3
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhN4+Xgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81708C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698097096;
	bh=Mqw7NTpBHjDl48UNCA3YSbvn3J8kim66nIeNSYAlYkY=;
	h=To:Subject:From:Date:From;
	b=JhN4+Xgn2v/e3EWki5cBS31VrBBUx4prmkhU2TctgytRhXvDbCV9eWZB9Zy1oNh97
	 6xv4ovev8AAeVT1W56z/vPuxYWNOd1pxE4BYYXgM6QwRllcdTPxszQkXHP9ifxYGbK
	 rsv1P21tgF4LpFDTsagiRhh5/jZwxiRYeagpu9iXMRLok8sS8IZNt1o1bCxZqmVVh7
	 h+a1SxDb9ZxTbUdgJkglA/wz4HNwEi0bQfAcSi5CIz6wNwOyEiAf8p7Oe2FBn2qckS
	 7QqxrANY940sr/hOhU5rCcwWiO8evyk2GaveyjcWTZmL0mbP0ksQGrpPP2qtGRCJUi
	 Cg+ZmTdlqEJhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C08C25B45
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169809709639.31587.12231505482828323513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ede8244cc0f174c75dacfcc9804513254606f6a334d28c2ee885581218f8132
Date: Mon, 23 Oct 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698097096
