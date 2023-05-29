Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C14365
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0336BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685319666;
	bh=Hbu5spOA/4vw9LjOBHgflq7zv6KMkmRT8E0uNVHd8hU=;
	h=To:Subject:From:Date:From;
	b=dxu51dJl1BKwzD3YcpUcpBpUMOHodWmQ76Yh6qiRtb1v0nMxtLaTdVZ9/b7/WUfwK
	 SrFkj082giWCegClBuk+89SCFrTR/SQ0aaMWnEXG5j5BjgzcMwGd2zVskECM18lAzH
	 /p0ZpPWsv/bd8t5ztWv5/e8bUM+aY6A2r8ju/yuAP5GK6J5D+v7tcGxy0SLoE4PDiz
	 kTCLE2BWxAamySS5ZXqfFGlxcJmkMR48yVF3CBJNdrm/6JcK4AtP2ItZ4D3EjrXSTf
	 lWuKCLsqaCBoaI4aGu2GJUbNxsObbRpff+OnlETcicbRQp7E4a5/r9YbO40q9WA55l
	 zhl8gQ/ai255A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE49DC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168531966583.28831.7612646297370187567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89bf2e48a01fb9d26442794914be2ec972fdc4c2596b4b78a960141aeb89521
Date: Mon, 29 May 2023 00:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685319665
