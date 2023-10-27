Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F751F5E7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7up/5Yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97D54C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698421096;
	bh=7eIHcIHNWTFEUJIipem+qssTcqfAOV0cdfJrmC1Jg10=;
	h=To:Subject:From:Date:From;
	b=F7up/5Yh/rWiLYvUpY44mWuwq04LNBf4H4QneYsXQaiFsUgSX+NfsoeX0C+b8QOQE
	 Y3UkfuKkXiz1Hgc+syAViGmuGlGEG3HsZ9orWjsDPIQDc7tq/czROaJLhLly8YDcNW
	 hlvSE0E4vEl/4XiRrUTt6232lTaQR3gokvGN42LVMS4tbn5sUJRHuqYuDZqmakY8ys
	 ZifjvbraxoGE0hWkNFD9IL3GwsYhhgdGHCULrpNpbhRHPth7xNt6fxBXUBcw5Lpkbq
	 Zzv45vTeQ6ddWVpjcf4Uv73UxAfXK507bGqm+2YfrEdSzWxqkoHZryV/ZMjc6RE3dE
	 BcL1oTheMPkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77094C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169842109645.12693.6528380068821394076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeed2e6ddfa6f0f99a2ffaaf945e1502b45c17577f0cb6a5caa2ca05f3f2561
Date: Fri, 27 Oct 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698421096
