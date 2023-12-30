Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0F28F55
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U67cJgyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 806ACC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703948296;
	bh=wYSfaPHEPHEmi3Zah67geTrHufOV9xzH+DFx0xx8G+U=;
	h=To:Subject:From:Date:From;
	b=U67cJgyyiHTk5wdiVeDTt0lv2DYsHA/0V9PDTPrUalBKzueLPAPOZRSl0CohPnR2z
	 KJeUym6kSYjJa0r9fkgtmtl8AZfkM49FIXCGtQ1wEyGyF8kA2zDu6D/RQCn3t7JZAa
	 OV5N9WZkGFth0CfBUNBi+yROWFEJksnFtInjHOvMUJnY3eYi9f1NSD2LHHmUPzMLxS
	 UaGjSCS3/nl9DCJ04siLT6o9d8pputHHPJUtIQF+kYtHJli6ZfmPhfL3goDuFmH/nI
	 uDtjW6FrV0wQmT0TbloK6eNtH8p0OPluaVQkSyWptQfYWYoc5h/rHyquOHQV7tBY15
	 32Qj7sUe8VncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65725C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170394829638.25035.3928319164602354750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83da3aa46cbafde67d85741477cf6593d7110759a76df7ee968528ff98457373
Date: Sat, 30 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703948296
