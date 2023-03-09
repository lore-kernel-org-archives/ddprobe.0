Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5E6AD9
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4C8C4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678359665;
	bh=It6tB3tVpDN3LUvb2l9IDbOzyvOHbJIMy7KCrEia1tQ=;
	h=To:Subject:From:Date:From;
	b=h7XIucsQxceozoBb2W6NFhnY2B0SzPX9xJLPz6MvPd1HhGiUw1ObL4O/T6fekNhJa
	 qeFjPILJTgg37YfhR00ldzpP/eltIjKMs6/eoMtdPJIXxWcd+EVAETTqNT4HZh5bBw
	 649lsWBtNwi+5wP7nkoNIMzb9P0VjaNoMStCSEwudqzNM6UKPIZHjTm25igBAUQE1a
	 nr0p/9ru5Ns8uli72g0ttZxDR9TH0IUxpod3tqJJwWLz0SKORn5ZzjSa+qeUigLtYJ
	 6ih+qQIGrYb10Dj8fdQOKrzLIal1oSC7MW27Qt0rael5UpCg7O4lbBaKMn4YGKgT98
	 CofmAQuDHTRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1F7C742A7
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167835966577.9402.11380523604411577525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd51f960c66490c7346c64944b703448925775522e709332537dd9d4e83a66ec
Date: Thu, 09 Mar 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678359665
