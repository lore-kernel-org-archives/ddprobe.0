Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191E3257F
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDXIMY1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81533C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703916496;
	bh=tkUI/dm5V9AxDZ7ghW9Dad9IDUeN1li7KTMOAPQ9Bww=;
	h=To:Subject:From:Date:From;
	b=YDXIMY1i9X9z/6SsgBAs66oArfitMTtS15GqyHF9fYlbMTu7VPmXopCcXmvykzwQm
	 y/05+lKTIDmH8QxvWT05eLPQJWUOmz+YkvmfFWHd5AohLvpObSKJIlyG2Fy75PB9NN
	 qdf9Sgdcy7ly9hvVl+UZ9MYhiBBo8IbMSKXWWSMdg2ODw59gGkLR8m3t3xLgoSUoSg
	 XWMIfUjHHIcj+gKHx+mQn55jB2vFU2RLG4dojrFJz6cp5laQMpLqJCOghKmJu1zJXC
	 lE701Ji4lAiaWMPYrG4gbO5oTPwnGZDmg59IjMiLFWrtF42tJdFWZAEjVx2bj6u9GI
	 Ff77DXTytsplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B52C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391649637.13090.4800519883724335961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac9290e79a63d242988adc8c3744e2706b5adc6f3a3ed1dcbea6891fa3b853b
Date: Sat, 30 Dec 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703916496
