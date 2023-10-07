Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523E19CA52
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 05:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbIZqRaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696657628;
	bh=00pNmiPCznitD+0Qd1ilxGAPNcjfsiRHpoRlwAYuhzg=;
	h=To:Subject:From:Date:From;
	b=JbIZqRaNdAyEb/l/H5P3CVv0nCc91ClROHWXcfhd7l8T+MUF0YlSnpFiiHwPYYlcd
	 cwww4ECS2xT/fF+LxY1wfbQw57VlTAl22NSOhmFgCg/4OoYVbQM5FKJGqOoGAo7S6y
	 ygv74s/kZ8YhR0K/meLosGT3I/KsFtOgjyfRiAG6g43TyNP7dwpvu7hmlevqDMj5Rg
	 nt+OOjrVvNpoJf70v8ixjHC4wHTiHgoy0MEENLw+aJ3DEKyS8M1+yuW72rU3xFmXkU
	 UromOFOFdExagZYPR57gQM/RRH04Vi5jBqY8Z67Bj39a/NcwSwxd6yFp1lgfAZbKE8
	 UXyjENSwYsOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DA1E92FE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169665762871.28719.11350215218458236575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69718c7c7ce0cce6fcf43f0bb0eb1b413f3bc4c350a3ccbd70932df21ccd10ac
Date: Sat, 07 Oct 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696657628
