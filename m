Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8494014AB7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 08:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaLtXFpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1443CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 08:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697704093;
	bh=Iv6Zjeio35IWI3qRnmKVC5R+UnXfQOvigrtazjGHzBQ=;
	h=To:Subject:From:Date:From;
	b=KaLtXFpwfqZOfu5fe7higgrJCnPXndSHPnY7LaPlqRt5c8Jwv7sVuURpQMF+sGLJA
	 FWQj7oWdZQcrTgkYhIvt9u3CohdjWv7HbUvHjECvjhvb3Pp3oInmFSfwwh+6r16rpk
	 7D8CwBlxrZBU+zCVXMayohBVBPJGLlF0mq++nkMlMoT/g0l6KhH5jLvjKkU9qEk4rj
	 wu2p/1cou1H7TwzjuAeEFQJxik6bpm5vaJ9+8Uwg4bhqkIRSOFA8DUFey4F2C4qQpD
	 sOvm/F7Ejxeq8W7Bry4lY6hXOnOPpg96m0A/AEewjA03R5KQfk2z8LfE0X5X+a5o1s
	 I4TWighLLad6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E002CCDB483
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 08:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169770409289.7223.2486106264118380134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c107ae5fb90f7a14ec02cc6a785e7bdacf3f717d980b6976116c858eaedc02d4
Date: Thu, 19 Oct 2023 08:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697704092
