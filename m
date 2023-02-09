Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB136B
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 02:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8120C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 02:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675910465;
	bh=F+Z7D6f06Djchyyo/DgdCqq2JVytzT/lo7IdpvvvXck=;
	h=To:Subject:From:Date:From;
	b=aoUc2dRbws9wdzgw+yFIbaSghIvCjDMpAHG4tvXdqRKapRaIelfx+pFxV3i57grua
	 A/4fhkZTVTov8tOfmqctl2LbuwORqurn8/KXT1OVg7IQ9uaIyLIeuuUzFHT08lfC2W
	 mnscrTWb2WlEUFEsAcEeM1NbcVMjGLeCw0Bw6J1PheCon6reKUhMOpSZvc8it13Vrr
	 x29ynMZI/JIVOTrxg0jgRhzUv7gxMK7K+egETC+zEkPtYh7LIp6hIMikuqgHgoN0AY
	 JAUhn8ZxPpEK54OVUbaxMRNkZnClN2MndjvatHJhw8mr5BTjEqz6Jt3rpHSuwwPHMZ
	 sFKLGaCpoxIEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB024C636CC
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 02:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167591046575.14119.14712496350603872235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5128c04fd1ffb762b1443dd254e2f82172e89849d21a3fe20ff8517c687d874
Date: Thu, 09 Feb 2023 02:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675910465
