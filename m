Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05B77C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814E7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668673854;
	bh=/F43U12Y825nyGpIjAN4Z/H0JZTH/EOhbwiH0JgN9V8=;
	h=To:Subject:From:Date:From;
	b=ROkED7pAARJ1kQCapVLQufeCh4M0N0ltzdNnY+vagKjoFJd9UEMHW3cO5tdCa6Mdz
	 q1WBfYuvtI32OQVvJnPMgxFFVh0w5GyTEYczTOxNwlW7uFiotyxfZ5f6VE4l2VqI0i
	 vy1Bx4psgwQ1FaAgAybePLH4WhTge2Q7jeUUPmD/II8V8tNPWfA6VIJAlIR2LTBzve
	 xRvZLhmzT0+gNZ+7jfWTnPeebji9HXJqUCe/WRPekA5jNM+hCItG/MNK30xdUE+gcV
	 i30jnAkw5txL9aC4GbGQjH6dG40z5onjD3BH36lf/VmzZFlmVQJGzUcXeYXtSFwW+r
	 q/que5ISP6Amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F52C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867385433.3539.3850910850413086441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa55a9319096abfa1fa98931e010420947b6c3557b46bcf9c40ae819957ff13c
Date: Thu, 17 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668673854
