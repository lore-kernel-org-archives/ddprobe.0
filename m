Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6644C3BD
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLjfAH+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84BA2C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703574496;
	bh=OYaItyqBY5Jf/rrmFIWFpbZZYEuomZ9xvD4R0QP/3Ys=;
	h=To:Subject:From:Date:From;
	b=pLjfAH+iy34sXfaYjcxreNS9Sl30mGxUGxKAp3P5jbxLpoYOvw5SBJspJhYJXAzmd
	 pOyjtwWpcxMpzFPwGsmeGyWUpQ454FlNTYQoKH7ohJVfhWfuh3G2cA16i+iKe93Oso
	 4uBbSQU4Ssgofw6kcD/q0SSlyjk5UXI6ZPcSLypp1/i1IOfJCzEKwnQqgQYoLOULkE
	 6UhOMz49ubosfzJpXgAztWKSyLAephNfqYTrM7mpZDvght8pFz/swX5R4sDcomGjHj
	 H9mjbRMzvvdyqmMevRqt8eIunRloy4SztmO62b6M4Lt9aaOhaQJplkxfCvH7musVNl
	 O9jWEYmMSZCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F19C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357449638.18715.3919305285452108600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cb01e6e2fe2aa2340e551db1211fb31d1a2eea2bec1bd03b7038515dc18c0a
Date: Tue, 26 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703574496
