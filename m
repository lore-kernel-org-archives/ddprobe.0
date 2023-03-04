Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4920D2585
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0592C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677951425;
	bh=Jv7lhS2wXg2PzeQp/oLWLHa5uw3Q17hOgFTqfPtUUt4=;
	h=To:Subject:From:Date:From;
	b=jlUvUn1xGKis+WlHagn2y0Qq/K7e5mIJvpl/peb394DcLOJOpQXwrdfkGJaAlGYGl
	 soX0bRPF6wThEGmkMS5LZ2QDVkTWkQF+C/tldGMaEYAU7uH7gTurjAjr/b1oRi3mEM
	 8q4nNWf53JOEIdZENQXezlU2gQIM1UviV5XEMt6TkySTVnWgePDEmBiVsbsFE4iQYh
	 hVzbQBZss6wH34zEn1pKx0ypAh3sNXNb4MUv+3mXxpzYQSfqgJIMFwwjwkEDXV8KNY
	 kqz/QZF79Vw+v6hY3Kq+/3sVbG8AIZZFBwmiUAE0piAcIaMYbProgaUXzhrmYGm8j9
	 d7Y0GleClz7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BA4C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795142576.32525.14343049794059056250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6673189de20f2a5d440b4037524204e837fddce8717ff587bfab9aaf7a68c5
Date: Sat, 04 Mar 2023 17:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677951425
