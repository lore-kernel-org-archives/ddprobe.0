Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160B22C9D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7022C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674040887;
	bh=0iIJnOs1zVhgpNb7zcVllhseL66UhtroIK1QCtDp/8s=;
	h=To:Subject:From:Date:From;
	b=WXB/J3QASrzcS4NJi/Wq9/4kci4qXU2qj83gvs6W0FLwNiYrBWmAAM8dDbKniYYjR
	 cusqiNZd12KAk7qeKUq0DrEe9BQXaeWBh/6tpDvVOCidG6geHGPkXoMxIH5gzXJtPJ
	 QUqwFRfCLyMii4YYkfTXQ4PqRWU1m1p/b+/O4bl11M/2Fo7h6HUizIvJamhUak6nNS
	 l6+SQXSnmE1QtjHaeiqkkJHeBLZ/AWtJbbmoaPlOG8YFxvl+1nfiWyO3cQBGWtE4rr
	 FNMx+MhueXopa64NyFDZ62E2t/eC4tkXiRKRjxO0dBiUqxUixsw8t7cFrOPQt/7Zjb
	 Dgu/1MKu9K5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D89C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404088760.31753.1962282872489201409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2cc97f58eac9d9013fd74d1be26c2870b6e04d155f1c547c9d5edaa544ac8b
Date: Wed, 18 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674040887
