Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E843232
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 13:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF9CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 13:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680356046;
	bh=qIpfRiPCVgKdM+uGtJKc1pmP+ksKfoM+wQ5qjZaH60U=;
	h=To:Subject:From:Date:From;
	b=BgJZbsqAUGB6puu5kJBtwQ8aGyn4m7IIq8kS/rDcKqFyNuKo57D92vMo19y8ELYiL
	 hSWVnnpU1cqMV+K4rKG63VNWGGSSqw+/STibEALu5SrivV9OcdZEVW1AZV+elcglAA
	 pR3gjUUnlQ+rDCIVM361F4Z/IHd5RV1qX8KcNUvxvLJJR4cBdcndHd+7wK3ZO1OVhz
	 sVUt9v3ZpbIA0mabl+i3s4kWa4YzjZkBmt3s5VPmMVmQVTB+95p9dnH+z4ZJeyM8cH
	 d7PNatxwQFL9P0hnWFoy2ZYtJ2Tjg7q3FFTs3z32yJpQh+dbx/NMGaTFJ2UZCTJHmz
	 oNIFFR4Pkfpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D36CAC6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 13:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168035604583.16332.3623740929642804686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe24fd57a0924e982f8e0ac1a2cac9023bf9626ee0e51bf6caa9078c7acd6c25
Date: Sat, 01 Apr 2023 13:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680356045
