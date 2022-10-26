Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35D5AD23
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71028C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666815653;
	bh=0Lgc7WkiRrtcx6724qpsWDqTDgYCAjxCD9D4pVZTkBc=;
	h=To:Subject:From:Date:From;
	b=d8EahEjASZLlgvVtlQtU39O5b5o/sGDFYsL8+hfneFrpdckjbTW407mhXu2dkV44Q
	 h2sz27lHjdCSt5kgf44nFmB8dqTglgCBcjvHI04X6YgiEJ2R8MeyJWdi46LjVjPd8u
	 +Fke4FrYFVdIE7nBwrw4LpZo1swdwwPGIcZVpI4rwZY5nN47is372q7tWxNMgU4yD5
	 0cMceP23AxqxOTThdHtXdmLRsvdCEoDSt9v61V2lRYoeM694FaXypvqpulNEwxHgXV
	 tsAsFtoPo7fozW9NwncqEEOzyKPahRc0D5uzGZSrTPJiNg6fk5MyLVaHDyM6EiqThN
	 kVBYhghjgESrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5555EC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681565333.5520.11508739646967186927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8078ab122a803bf500ccba63d8bccf1323eb34749addb9cac2192b6de9ae120b
Date: Wed, 26 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666815653
