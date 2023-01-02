Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D117F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D095C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672617687;
	bh=pzDRckRH7I7jgA3xLtghxZItDz7x/R9DwsaP30oov7M=;
	h=To:Subject:From:Date:From;
	b=cesW8BaHuFbavo/dhu80qKxSI+VYfjKi1r4DfZN4CnmmqYktdRNccpzwcT9ey4ixv
	 yVPtKoVJZlqqHkATn0jOrwckxWywvgOKLZhkpJeV6QNJ4sfN7LX/2Q4OB8SEtSN/YK
	 0o8eUbIIaiJOZDxiqzLbu5B+4b+xO55XN0Lzoa+VPzyE6YSlJtF24ZkdlZQzMmCoV5
	 vdnguVA3QkV4kUej2UUjdOdsGSzbr0/hlNaTocnKYHt47fBi3WcGyMcnD98vFRcZF8
	 5jmw0igSGPfkRQnaWjLNs1TL9lPF6HEYxpyLinYNBoZ7zFIDVAUwQyJYZEwssJYdHy
	 5lq2O3J6lUaow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DBAEC4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261768742.4149.4218169897475132567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6b0787790e1afa6f530118b5d1e00db56df9985a43c4959b55217773946b99
Date: Mon, 02 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672617687
