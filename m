Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5177185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86943C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670688687;
	bh=ZZvazHc2EtIfqjQ+6MwRvkI9uHP9v+hRROX61yRvnCg=;
	h=To:Subject:From:Date:From;
	b=j5MwMY7wE8yN7i0SdtltiRL06WNqnVqCYn41eeFAeYHb2PzzCBsDh8XD7GoNWzF8D
	 0VH70kHBjKmL/LRHrOO5a799cUGqsbxY1zjQ77Fyjwvm6QbLH53AR/LtN3YB8U7qKu
	 hTnalRHcMe+0AeYVtNWoQcZcB6gUydU5O5mMWYfuVB3jPt8fND+UGwT0jUyGztd7ut
	 J3WBXJXVdZBParnZF60TLYFwx3JXxyrxD2DD8eHQ40SlAKCBplQx6eVDszCtTGSHsI
	 Uh9uBLdTtbo7hJ5opztkxPE746qx/QoEtXttVkqByOqrxBf666MLfRstZ/bLF9ywgm
	 dVw/vLpZgdjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A911C10F1B
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068868743.5898.5613952541333877251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1170304c0e97dc2704279d9fcb59419a0adc40fce397db6e210252da7e110a
Date: Sat, 10 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670688687
