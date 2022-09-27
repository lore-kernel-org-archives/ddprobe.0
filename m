Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6084C86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1FBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664316053;
	bh=pLZ77KOD4EXwTc6E+Vzy5ErJ0PRXbXZhf6XFSZUyTug=;
	h=To:Subject:From:Date:From;
	b=jVYstY/F+PKUXP/CaVTEBJswyAPcTnX0Sq75xsLKpjKdorUCe/N3AtzJrgzKS8gSr
	 EQjt7riDBwQ9pHyHLqAhTvavsFIEIncJPBM4mNtgVP5agZ9YcyOB48TPG0mgb0NEjY
	 5+wFrazksNYG0DmGA23QAtTyEQjZwQhEiP4zxO8ACfFiS+33hWTrjF+cTRzciY8CMg
	 RyvWmYYR/JzWm9pqBXX2WAIycNJJDIxTrgs/woIeqlInRkCOgr9b6oyvWjh9x/Lnb+
	 CuYbMNz+QRfftDVWaF+J9vd+SyCD1LafQUHc//M2+lSQHV2ODV51Uh6ExMjIhA9apx
	 AccIwym0Kl8JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690DEC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431605337.6328.10665406692525639980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a93d7cb5b43d0b844d415c6cfaf6384cc37c2328643ff45203207d0736953d5
Date: Tue, 27 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664316053
