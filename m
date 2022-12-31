Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00B72F44
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82357C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672501287;
	bh=9/GIJzWADfLed47ZvEYwoTP2DcJsR8JimSRSAHxXItE=;
	h=To:Subject:From:Date:From;
	b=q/TQuuv2hra0//mR1GJtBjhHQyqqJvnuJiwVri9Sb3G4uMT5RRIIHRhJR+FAZ6Hyk
	 5Sz2JgYCAavnbk7TuHoj78+o8FiECJfdkknYAGHg9fMO7/w6DWLfdS+bL16BFa6qZT
	 zqQHpQHD+lMlblcjLWVgDbySFN/IwgR/kUUA9ihu/+EMBt1dPsNi9aGMaJeaK4JWD2
	 BDqq0kgfgVzLXgTL4FXgeRpEKOkrxB96ePHNZEwRrQM4o5zr8REoE4D1VQ70mjnAmw
	 o6rSYisnMLf58b73qlOtFYL07rQb8xLc0O0AOI4ZxOX6TTyBttsMDjPH3/H3UmyOsY
	 VVal0sxxAht5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AC9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250128738.27751.1289259981262287785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98375490b36362e2fbf857cdf7afb73b8f7ab2244ed101b1a1651c3145ee8812
Date: Sat, 31 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672501287
