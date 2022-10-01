Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA76D28E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CD3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664640053;
	bh=o9daPHs0OVBJl2Zahari3Y1qlnOFV7N1cV8mLTz5UCs=;
	h=To:Subject:From:Date:From;
	b=NCDHqsg1hl1GwcdHRQmxfdUpIL5wgwlNjDDPUR6seD4zZPe3OzixFh3oguzNlzuMT
	 kX5DpREdvsHxt+Aw5MB9gLXpwccwbSZlsWYF76//fBWD/eK5EBEmhqbfHFxC/U5j8g
	 UeAyR6jkvt0g+2oRAbcSLNpnRluOG6MBi+6fRaQSnvRSWA1YfMaxQhZh5E6Neyy1W4
	 +tihZKPHTPLaqMkaPQFbZnjoSJb6ElpQspI2DK9vmpu/DEgo8ORMo/MSKgh/mxduRp
	 +gDDFIT142YZiZu8qekCoIAZmNZ/NLWdOy8JLs9p67cHUtkDm7MKSaiyYIgAX7D6Zs
	 Xl12Gu7vjMGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555E6C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464005334.29352.3607457917655570678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a2aae85323c37e4e8490cc28f3c8d5d297bb191b8e749a1ec4fdf34316d1d4
Date: Sat, 01 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664640053
