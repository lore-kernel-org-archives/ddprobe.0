Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3717F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 07:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE483C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692171788;
	bh=2TymnID5uBbEfgjvUGwimMDiXO7U5Gpi4zCYLY02oE8=;
	h=To:Subject:From:Date:From;
	b=cO11VZigsqbvHmJch6HQ4aWOLSBrUp6vzHl5N3T8qdde/ZaptlrDw09TPgFHj8oEP
	 T/9iqaDxeCbljPtEra+oT4aa9R97o1RlaI1ugDWyEeXqHhY31I1yA2YJFPacDmhnPp
	 0MmSRLL7lhPeq1l6rpaVeIEXL5hms9CtA1OMFQSHITuN52vwGS1v2f5YmsO0nRHPXC
	 dQA8/Kft+xpJv492tVMX7H5UxDYk6D+fJD5oSHhV2N0a3J3jOfyXOMavZERMnPL/dT
	 K5g3UDoqgkuY4s2L+fccyTaa40OKfyq4a6vY6t+Q46gz0y4JSH321gW6nCFHUeN3tc
	 PaFnFBUMyIUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3915C001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169217178866.5174.6610622309043503125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9454a34e348167a73b39486d222341252a063362520e57013b20966fef4e226e
Date: Wed, 16 Aug 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692171788
