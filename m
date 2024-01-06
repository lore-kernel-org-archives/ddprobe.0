Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232AA5393
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tl1HlV/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 924DAC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704530296;
	bh=XXEUpmzVeHZqqI9hYvnNgUYZgWG5bMYzMj1qJToZnLw=;
	h=To:Subject:From:Date:From;
	b=Tl1HlV/bcu5vhhD02AkoAby/zo60nZVnJ1vww6Lo4xGXEoEMlIbBQoUM0IaZZUTlA
	 omdd8XRvtbWNsnWu+XL/9LAbdzYkj3VPmNASOqU0nlLAx6XxB0oSLLX+JICR3MfGHI
	 kt0Ekw7XSLbaLzKu3WTYMhcdOhkMgNuIuTnxACdE9OUBXnTXrll2ai4VsEp18rcsgV
	 OSBzZCtkXF7ynPfce13rwkJA5tXvnK+NajGVnxcHmVaJpwJ+MT6PzR0INlrWNIe6Aj
	 BlIlAj7srJzyk9sHcLdWMr5cuS0jtVRXf8Zt1+lNx10PKxGj86NW38lPnVl6/KPsBX
	 PacW6AA4a+6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7116FC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453029645.6310.8403790634006029540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d176d0a42704ff9492270f73377eff8f1b6ad7a763063cfcf03c9da961793413
Date: Sat, 06 Jan 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704530296
