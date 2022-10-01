Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52011FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7763FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664596853;
	bh=d/Zr86Ln95ejCBAbfj1hEto2cthgugZ+WU3wPd9As1c=;
	h=To:Subject:From:Date:From;
	b=gYCqZXu/ydCIMiZ8ZKb0Q/7ThawZM++bdRb7RwixUq4JNhYZ519Q4zLSyLtEq5T6f
	 0EXEzdgarivcLS6Kwi4N6f59wjdK6Yd/2CfoVII3UxRJVIS43mPcNHAlzB9U8zaSFy
	 kbJ7SSHGyBNk6yYP9/z1hWETgVtpzD0hb5hiG43kKsrn4Lhjr2SkF7QpxSLQnCX/PZ
	 /X26+7Rb7RHYMkP0Cd/YOazqIQCsBtwjxl34cAbBRSiGYqhAlEZWLgb6D9BE2l1rKH
	 AILS4IlkqkWW6jMaI0r0XNP3aVAxlWG8CqkB8W+yWLdSwYdAWrEss39id6PS9mQEEm
	 PlqWxDAwShxOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A72C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459685332.22885.18260569145122798195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6760584aae222c60ba8f2e185ed392de56c4cdf90bca79657ba3c1ca33daba
Date: Sat, 01 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664596853
