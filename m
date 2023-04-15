Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC422103
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 13:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28BBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681564445;
	bh=L41w5ujHOS9lyNkIINjeSutW6LIkwE98vceB85nFcRg=;
	h=To:Subject:From:Date:From;
	b=JoUuJ2nqLc4uBJ6gqFwV837VvSM0oeD4c3UOXZZwqb/NmK/2vHZTO6GamDOGObGh7
	 bLQxcu9g3MHUj1Tx6yySvEI/isNdL1GO8rbJcFe+2Z5Gnokw89bgzmNnEFPsutyirP
	 TilSlpwMjF3ACYmUPftaMQbF7gkwZTA8CpFsicAsOzFns2atPfJ2tGsDWvKP07D7ay
	 QH5ZSdfGxf4jjbcb2R0KPYyJlMPRBvPHNif2ool7QcJi7gM/wh5ZptX8W2ew9ItYSz
	 RC+dUanSJEPMXgknFNlH9L/4Qs7DRqd3xxLSMC4mjZZWoy66oYoljaHgBisGUxrbfa
	 XztbZuENrwWKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55E5C7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 13:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168156444575.21611.14136540784515206679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7565d6d8a9926787138a7270505894b0d4038ef2cdda7564512e1e7d7b275a51
Date: Sat, 15 Apr 2023 13:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681564445
