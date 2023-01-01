Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE501197
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E673C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672548687;
	bh=Nf3DIyHTWB5mAnvVkO/JV4AnQZVRJvaSgW8s2SSHJo0=;
	h=To:Subject:From:Date:From;
	b=Iet6mDlYEWTjnegSaTuX8y/ll91caT+lYc2ZPsIUC2MM7i4o9GAGJIGGQWF2twLLs
	 1go4NERe8SFBE+AlEhT1rLOod4BhZBV6juh0sgsUrsBRaC3gjX66TUvPocojQM2VXK
	 dUhHFZyHMbApg83I9a0hcqhEk8LgjSg5YpdX08AKtqwaLKciSSgroMDv/JjlDie84s
	 57UuPM8jKVFICmKSGhQwVyFGYZfz5G6V+JosMjwyhgt+y5/pK7niVKjsZRapC6JyNW
	 Z1VTDETcV86H3aAyL5Rp32xntgEiFXtdUrsOkb4UnTaBmhNyVRwmxWWnHhOz4NvZWw
	 NexFZRSKH5Y+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DB6C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254868737.29568.1253733222384549348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0a2521883377009155e4bf6d33c90703ee322f9c4615030f9d1681308bc5fc
Date: Sun, 01 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672548687
