Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75163C25
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97BA7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674066687;
	bh=OtQdjm3bledHxQ/Oe62qWAGh9Hn9QMMgSXt2tKmSWX8=;
	h=To:Subject:From:Date:From;
	b=WBmbn2tV9tHYp+CS8mJfinhZ0rXjYsRO1KWShOT1+ZVbGhCopDEr7v0xN3qmFnBve
	 zfC6KcLk94KrQRCtOkiucYW/6Biu7XEWCdLYEFmhr2/qoQja34DSU+OxBEohIIUrHk
	 c0GT0KH9OwpEnU0E4JJmnq6ew6leNCtSFQqnmwOoW5npeQNIslN6r81Rq/jePE/ULs
	 XhklvrZxRmqirDI+HhdX5OJ3aTZtHKq4ctvXIYXpiKwhUz4BTIdJ7ZVjupNHK2PiOo
	 rS4inAmTCl/12xbIiQLiKOjacTxQda/fp+W0qNJfFqBzOZ17JVB7q75iMcyPHfJS+I
	 Qzr4HDGFyPG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CAFBC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406668743.13161.8271683678441343455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80dab5d74cebd520f6bb8ba677e82f2ba14858d728be7c4b85bdd65949e00a4
Date: Wed, 18 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674066687
