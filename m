Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646AE1D2E3
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 14:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4375C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690037528;
	bh=oYwvW1WDgLHzfpc61wIZCvbCfivpTAkqeNx5Jzwpcoo=;
	h=To:Subject:From:Date:From;
	b=bECltvIygscvW3NBtMPhGSTeGydiBzHuc4dtDP8djb+GmMnQWK+kokQ69A/5gj8MH
	 MYdlfgvgY4ORI7Fg3409A0y9XcPkJ2cfi0Av30INekPzMJXUWl5MVdvWL6JpkSksb/
	 7FDHsQR9lAyO0FUjClK/cqNF62oYY21ZtsyCzG/l5/07kpJX/D8Nq79ZTJS/OWh6Ut
	 WpBZwO52O7cs+uB+0wSe2FU1TzZGRV+Ci7jW3Sc/Cy5+MDiH+zFOPN7LTCFOeV/AL+
	 C5OCyST7LxQ8QYgD1u/CeRAQjOtlg95MgRGtv9JmpV9r43caPBucUgZbhmq4ORuw5B
	 90X6BA/kU5bAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20F5EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 14:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169003752869.27281.17534420136081104083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a9f59c0175ed5306a7764ad5f8413cdd4dc947f7cd454ba7d6330924cd0c4c
Date: Sat, 22 Jul 2023 14:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690037528
