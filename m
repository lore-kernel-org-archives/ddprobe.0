Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8487C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB4BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688452568;
	bh=qKM4wr+8c7U/J/0x4WdxWTpfU2qXlRKOBPg6jeocvGg=;
	h=To:Subject:From:Date:From;
	b=qCjK9tTU2CClCDH5bp6cv/51yW8i9UQ3GejD0vJFAdMIAFZY+P9tTQzmdJADecCBZ
	 tej1exiOjUuyFb7Imc3sHmUopu4sjYqPpo1jK26EAmbRpdwGDGJSa+rw1qTeBN525c
	 DROfAMdKBZK33Ulxb5K0NRI3bmhxbhBE4y3fRsOdyA4DLa8j1ltLUuIi3f0LXgsEjp
	 uARJtiAx6NGR47rp93CzOm4vDsNyFKWdGqikkV8kqALyWYW2ZVJuwwfqpf0zK0Nn8F
	 MCdHwF4v9JIU+Z8QupkrinMYGtC7xsz21xZHYMmhSNzmGVmtcFnGPRQINH02NNTgWP
	 v0wAvHbmYNpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF88EB64DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 06:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168845256876.26100.13114925137173243763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ef6389faf114466ded8269a8f3070671dc02a0b6db624f9ef00653f3e5e172
Date: Tue, 04 Jul 2023 06:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688452568
