Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54836525A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE80C433CA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688974028;
	bh=8AX4V1gynAf++6B7BHjmoFQJRI76z4J0510x1bwVzuQ=;
	h=To:Subject:From:Date:From;
	b=Y2yOZ+z0eWQE7/KLk4EMAHPmaDzHIS/DOpsCbt91y2WmEk52FAvkgQwIMUhgLQ90y
	 +8RAeOY2bFBmUGqlOxSyVIV+P1WU2wOiH/djAQGG4iJIZfDqyLV9aij9EXa3K2ib8s
	 2NpvIe8xr+INskQwVlCnodffK0IxBqgWrKWUs7Qce5a6wUieyXJ3NaCHsFXt2fxD0q
	 1iQxQ/WG4wJQfuX0cQ7ZiNyuBOPQxoA3uyzoEJxpHnfHoZK+Itt0tcZHZytwK5mR1T
	 m20IPCshdKn43E5VoUjqVUPybHF05YiHnlmBGwPgkxDeun8a3zNKu+Sd9ECJ1MW3W+
	 s5A+CsQEIjyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B371FEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 07:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897402871.23733.4516122821339993275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3caf1e849b7cff3a42556ac50d40c94d61226990fff440932e27a9269509837d
Date: Mon, 10 Jul 2023 07:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688974028
