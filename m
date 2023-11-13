Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B718645
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPJtd+QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B06BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699870696;
	bh=RK7T5oLEB0Qu7n340NFVmEsXRwgN9hKZlphQ0maGkak=;
	h=To:Subject:From:Date:From;
	b=RPJtd+QWHPJLmWK+oqvRiy70LCC/ek/BRz3c4VQ+irad1XwakLI+3NK6+2rzNyxGM
	 8pHrdmqz/vrtjsMXoImwT/dNHRSecSjd+1xu5EGEi0Y58V/n4EdelSExlzgZqIVO83
	 WziMJa1NKYiLPA+a7GK3WONf+3vZTWR57LmSo6PHJEFPn0Rxy5hNh0ld3dXi684wYj
	 iXFZ2aQiktvfc3VjSjxIguLfa9uiTkuah179aGO3dagVUgphZ1g+g0O3oODEt37y49
	 +lLFERB6u/GOgJZNtzbKKj2Ko1beIp/VZ3r1WWinwuY5qu6J7fVS2v4hakr04TJY4h
	 OwHA9jdG5TL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB7BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169987069642.16366.8033302361043570634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9844d23399a9a3a77230f271e75ff6772b832cc0bab6dadd3beaa0f94195eee2
Date: Mon, 13 Nov 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699870696
