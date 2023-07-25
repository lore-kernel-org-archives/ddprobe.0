Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1767F1ED4F
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CFBC433C9
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690285328;
	bh=ZJAMKY8tY6k7Yrm1/WTm9j4Btk0utqKxOnRP1vzVOvQ=;
	h=To:Subject:From:Date:From;
	b=NP6pZGLqTJjYLxiPCTDxAM8jWnJuygsixPv5bNMD4dVKXs9YjlszHoyjMlp682oeZ
	 yXcYtnPzsoKGLm6Vx4c5lUSsP47NZSmpYlAnfdGfuXl1WWGGBLfjSb9nIL8IPms7BV
	 GLnnsj9lfSw097zdtwEs/jf8MttR7izCMvsLw+hZjT7v1WY4K9/wOQ3YE0ONILOpZH
	 cQpY7hu74czZeVzNI8NELfq6dxwhHSOE7clHSF6xGLNXtM41/G0S/Y1iz+8wQn/pny
	 ApX825AyDEPHnEB/eaoCR85B2/AKtN1nY1+CrwjAYnmps1qVZ13HdNPw/FlH1MuaV9
	 c/FLk6BxdH9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9549C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169028532868.28685.8574369077612123820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f81287e651bcfe1c60b67aaebebd4339b4782ca4e8f57082ba14e6299eb5159
Date: Tue, 25 Jul 2023 11:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690285328
