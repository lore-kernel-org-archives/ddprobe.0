Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F3215B5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE1CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672596687;
	bh=eSX8BKuvGUIO1bwq5XJwcXrIeZoUjFVKGH2qYR/qG/k=;
	h=To:Subject:From:Date:From;
	b=Rlboshx589pJXLg8FEbPuObIRTB0ET6ZVFQ5dxRp1uwwLhYAawz7+FC/FeX+Fze4r
	 5EZI3zeuh0VMkR+iuf69DIhOg5z2AaJ+VnxDdSEzTpdVoOt9iDktv6zSnCjzocrQQ4
	 JWul90Hi7mTKHhR0FQbmsuvvbTsLaf/L7K9F/CPvcBDPGRK1pCc1b3Z8kn+smQme+Z
	 kqMLG7XzJFIM9GSDfF1Jg99CM5CgJ4uP3xUusgdJsJOfqMmaKX4Xh314ZZ3/1BbWrG
	 nV/qcqLJUG6L+F9c+7lCeyVwF3H5Joph2vLwwzpNojKhN1VrKSFEQ7rIJlSuDhRGRx
	 n94NlWcetDeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F01BC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167259668738.14784.13649172346315776029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a131c1bc650ad6a52a1a12f9b34b6524b4315f4f8f99889b888e9ba8a6a7ad24
Date: Sun, 01 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672596687
