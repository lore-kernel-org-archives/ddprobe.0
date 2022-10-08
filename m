Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66412F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864F4C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665267653;
	bh=5dVQMU1VJOLqlsbXBTQUyT6J3CJcwqeHg+HWAa1i5oE=;
	h=To:Subject:From:Date:From;
	b=nPlucNK+S0DTN/EchIAwep4TJEENI+/v5w/uh/UHW0xuojadrs5/+XhuqwTo7Embp
	 dfoRdZIaVrkGx7x55IBkxq/Fbo7FC/BnjQUDUzK78HVZ544jOBZ/a4qvAT/c3H4FUR
	 eoSp1ZKijYekXTtultq2lF7xgW/VzCL/1HTniJBhU3fVai9SlqOBFpQNTT80U7zPwZ
	 LGSIubrGMN2qMb3wKg4Llu05SnVOjUgOmBtcV7nNAa/pN24orKEG1yUxjZZ9Pyno97
	 6NGZGaTEJUj7sXSfxWg78nNeI0J3sGLuamq6DEyRqljwkAZwwrK4d6KHewt+SAcSvb
	 X4tH9bfFgSy6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACA3C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526765341.14905.9545489708776398983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9b1b2dd2a567ba10364c5e66556dc3886c8f8336578f8c2f968e14b8588d2c
Date: Sat, 08 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665267653
