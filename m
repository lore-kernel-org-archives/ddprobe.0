Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738D253AA
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuIR5vYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CF8C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696779428;
	bh=RZDDakkC/E0uJaghZg8vx6EimSSAhBql2Vo2Glcqgp0=;
	h=To:Subject:From:Date:From;
	b=WuIR5vYnLaud3EGt94FsmG8VTJ3xNGWsi0Onf6/GacDs/kSFv25XXhtX5Afcfg/k0
	 RYnRillWWSFqq8RhXoh3BgYquuZyaZbRqDXbz7sptp09WVd2AMkn8dxlIGOVzMPnhj
	 a8+IelCKUJ1IF91ykxt/Xr3qhhBWikRHdovXSNXHN9qDr2hgBcW8ZxTrlT8szSYouw
	 NcgllG8UOL0fwo48+6Kx1uaIrKjdbrcx609mXmOhyDI6KviVlqBDqdbivMBazEzy25
	 yJFjQfbhLv7SFRbqMlgrGMVs3M3zA5joUDrVJSLyKgLFz1Vf4NuVZ1BtiUTROb30Af
	 gs66MMQN6krow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75F0E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169677942871.5202.14840085032320654005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86dea412f2385eb5431b364b6e004ddee78089f2f131abc70ef61ea2cef5c9a5
Date: Sun, 08 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696779428
