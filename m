Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFD48BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74007C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670443854;
	bh=Cnce43fzQXL9OKTc9n94+o69YDTmIKixeH1mNQUMfZo=;
	h=To:Subject:From:Date:From;
	b=exV8ejaNgUI1c3JFu/RlmVoArIpfCDydetJvKvn4HqhbEk9PPhMC9Pt1C0fwfvIec
	 p1JjAzIarWP4OdLE9l6SMtBSODOwsBjMgM9thtePNvNEl3LoqNccQE8jKBALfJN/ny
	 BywowIopMqNSH8kNxW6MglRG61XWp6foBxUWAPrJGG5EyMApBP+xF4EXCrBpbY9l3h
	 d2sfgNWR4kgQOKd/XmW1tKqdy5vv4++mZjGYEqA8mABlAFWLKa6bWLW8FeLAlznsdj
	 /F5b764yDoBLf4YrxcKzKVUp4b8OhO+mkAGQf2qfSRlYjYW6CDgW2utuhVZ2MrRd94
	 cDb5zPgz4Ee0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E2BC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044385435.6619.14465665264478571156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d838579f1cf7e3cacf0c3ed84c1fcd328b09d78074830ae1f1c996095c36802c
Date: Wed, 07 Dec 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670443854
