Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5040E19D
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 09:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4563C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 09:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678007825;
	bh=61U8rL3SsmbwxuH7U0ssQ3DkzSj89Pyn+7OEnyS8ehA=;
	h=To:Subject:From:Date:From;
	b=DiWMmGtIwJJZ7sefmj6AxAjwRXMu9AYeiGYlhLQ68n6CWhvl7ePdOtoUvp464m+HD
	 jNjO0rn3LYYRHhbu3+6eXjW1zCW4Xk0RgfV5yz8FrhWtUazVWnRvF464wMev/1qN50
	 0pofIgxvX6BaO3dZ1Ie0Swa26ZybBvNeAQwV4uM2/qI3WSUoDN59yG/8Yx/5EzEg+P
	 K2hI3tBqT2evALCdF2k8msEBpeMR2VQC2ycBjNn+KGWCnMNszeLxOajfW9eAR1YdQi
	 zRbRRhcbBAa/ByaI6m/Hb+cO1uFlHjrtdKWPb4b9cNseeukn7S0//NBGGNq8tHJLoP
	 7TcZLfE3v++ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD82EC6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 09:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800782574.15597.14639152465191701643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c20c746a1c06af01de1c02cce49d38f0ca4beab166b276fcd32555b0911cc0
Date: Sun, 05 Mar 2023 09:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678007825
