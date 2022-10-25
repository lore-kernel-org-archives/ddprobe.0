Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E482AEBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D046C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666698053;
	bh=wcNIVS/572mPMgZdWs4+k24ZVb3OgpK1YU3rlO0GT04=;
	h=To:Subject:From:Date:From;
	b=eF1Q4dstQxsbGK2NawbHUu6Pi70VvheqjNJBTMnZ7NCgrG0Fs40Es4uI2YlJAbiMO
	 +aZPfh+J4MiaacnxdAwdB6Cs2xeqBuy5+YSxTJKYlzJmkjljwz5pl0JBv9v+PlYCtx
	 53k2IMj17M2i35CDn/bGx/d5J682yrfjwdHSQZ6SDOtoil+vsk0Tmk8MmP/gm7muIA
	 IdUlYWZSzyjthWwJRta+dPcHqiUfVC7WL0v/fazkltIKBEeJqWhxckdV6VG30Q3Str
	 cScYSpaQd6kj03mD3wKkp8Q4r2FteIhG3FXNzsIpaQJ0vvTuFtsGGjmR0NaC5sixqe
	 vLmXw34eojc0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70688C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166669805344.13595.2399617300028297096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af2a3313c704bd1301577ebbd8b1f6c7563cb876ed3091bda1c42d3aab22d61
Date: Tue, 25 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666698053
