Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D3637F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE3EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693013648;
	bh=WalxkCBp2ESH7kz+bnBoRFhxMmX7Y9EcdCmLF5Cn0Tg=;
	h=To:Subject:From:Date:From;
	b=bbbC/E5VGGTJOWtJwzo/BWjl2icVxkpMKYmxRFBGIh3DyZCPxVrmV/C7rdeF9ACFl
	 SYeYKlVZMNGdkN6jXjBGfyrbV3p0DZz7cGkg3jat3SIxYEFEmuIvhk3Z0hAW+6dxqD
	 HYt/JD9rgCPfGhd9Q5zH+xd8FjHKyipwzZzUTIB4QlkjbFtTNqd6v86/O0bJfTXhY5
	 1nbqTTLJmGpwTMoA2Vvnqn3eQVmna12ibEWMxJmhe/9I78Yy59RP4hyh90Ns7xOCk/
	 YXpwP6rBlb17/SJllBB1FLULJqFUYQqEdxfHh2/ZMBeyI01N+Vn/nAfrDe+L4Hf7C7
	 ZiLR4K870of9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A859BC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301364867.10546.17012579224595699322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185840375fd820cce4db15a078dd2debb9415b16c07852004dd9208ba55a456c
Date: Sat, 26 Aug 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693013648
