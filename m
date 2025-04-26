Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8AA17E4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745676595; cv=none; b=WaehKAhkzQ6I6+WSKeOzCGSmL/+Te/6iss6m7hbOfZjuJsSWVHhz/0b2oYlYshjnVqV0/TarZfrQYl38RW8KOpzH45voPqPWz6EH7RElvPhNYKc1ARUuYtawfxMtO/NGdh8/3BUR1C5wWUAVNljODliWvDqlaYBzfFC8AIighZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745676595; c=relaxed/simple;
	bh=0xSXu+X18jk6LfDgXU4RENY/3Zmz8+8PYXU49imJIwk=;
	h=To:Subject:From:Message-Id:Date; b=UD6FYB9VHS7QMCsImZ0QT4Q37uW0N54PNPZHWQJOOadIZ0reyEglPr85/CZwzZxFYQ2TMvLJMMZyAKI6Q7Kt3WIJp00IOpB8VQQo2PbwL6hVZeQ2Qm2EsHj3Wvy+KQW1qaG14O/tb1PJrFGd8TZfHxPtchv4u/ho74/TFB4Nx2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQFIld4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQFIld4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57ECC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745676593;
	bh=0xSXu+X18jk6LfDgXU4RENY/3Zmz8+8PYXU49imJIwk=;
	h=To:Subject:From:Date:From;
	b=tQFIld4s9R0hv1Lwt6e9cmuGfWZpR6HzZm5L8Lt/9IjbeNpZ4SzKSLdNrkjKS014J
	 Hy6tuoU3f/mbxfLOZrPOHvO6okih6pC/BOful/OolaOOHCDgnXwkvTs8D7AhL2PLzh
	 dMi5oH0Cn2L4JSo8Y/Gb92GenUkESiURfFeYXkYkRxeS2JfC/Do81oG7GEvF1N2NpS
	 LsYrVmwYu7uKbUg9CCEp++v9dGSEb11SWzY0gWkbOSBbhA7WI85qHjEVa6w2vQv6Xc
	 rC6nMCsm264liQWBGYpC5m5NzLC7f4QT4fsRhZQAGjnNEpTjmEsU+etBlFB1I7YrC2
	 zBbmEvH/X32OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C67C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567659357.21962.12199526151625675228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2651e70a3bc2f70bd132475b882daedd77d492fb35d26f701ac38735c1e45760
Date: Sat, 26 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745676593
