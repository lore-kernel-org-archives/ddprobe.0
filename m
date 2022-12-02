Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C4133F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B37C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669998654;
	bh=HpUpm0vTrEvOeoIrOF04/QA1S5kuQw/KCE0YB8ETUvY=;
	h=To:Subject:From:Date:From;
	b=CFcgdsfH0CLMXoYkrgV8o1f7xTPGbVRC/tcASnTlzs1OXFVeZzqZDef47b6Sz4o7E
	 r3ztRJgXbmFtaJitlChg0UuVmGZKLvJerk/2bgJirpkdtrjgzzAknITneE+U7FgP4s
	 iOgF6onJtJiwb27t2uqLedCQWJ5TrRi+x7INAPynv/aOwhjnTy9KiGv2BnzoH3sDXc
	 rXrO6ao/EKsaYGbo2+Lqa6bUVWJeRLe8K6fex+AkDPWP4Z1NaGor1qYJsAK4M7ffJ0
	 GR1ar76hq9BhaJK/eT/f49q3+q4rrXpoLMz60uFLFwGijqyve7lDxW3qkvyPWVm/I9
	 xPucAhXO3AtHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55911C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166999865434.10804.10149183158962006053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c674e2a33d9e27bba0c7f0ffbd7e23964e803edd3b8e0f12897c2dc0c54b8d9
Date: Fri, 02 Dec 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669998654
