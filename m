Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B975362C
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B6FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670472654;
	bh=mXbu+J+LHdOO6P6KPFcLjx8mEV8wkCioYFcb7mvmuAA=;
	h=To:Subject:From:Date:From;
	b=avbPEy3ccFjg+V07b+Sb9xEXOtxu4ZMbG8nV52z3fk1itb6R8jE0DOKMR8FD7O/qU
	 +dP52NQCM7oKjD4t0ZUxcCkBnwMT6ueIACQijEtsTfIFZAAWAtodfJJL8SL8zi5H7J
	 8nZrNJ0biZvITtZbYvciOhUStiympepPxi8gsjdryKl0ChGhcodUDA4soYHCt1/E3q
	 0UBErnjO5H8aUpcjBNPeNt2Acwnvt2wfuTe5/A9F12oCireaQl4iA5CJ6y3JzVNUy+
	 wZT2YyZXRH178t9cDcxVBLWSXnZCeTgyqzJFT8yi37r5me6xAjpyxyve+QlRFXxl37
	 Qj2tMM8/PsCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A388C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047265436.4085.10256500180659877698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debc4a2be5967cb9c99868445900fab8481368064e05d9ba7db8bf6e4ee95a57
Date: Thu, 08 Dec 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670472654
