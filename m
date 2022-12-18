Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D54EA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC51C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671364887;
	bh=ai1wsGtlluW66wH91D3PlA/riWj8sS8CC1XKlGtSESs=;
	h=To:Subject:From:Date:From;
	b=vFdlrt5F3SU5CsDJ0xYxok0MbqkKXlIOBxzIroTPhu2++yZkEuenotqW5DsGs2ADa
	 QY6MDuOxrz8aA8Snm1+6A6oYMGVfOAyTOcqCK6jfAlEhwC/sB3LnjX1Fnc14hpkAgW
	 re+nZ3mvgQxduBa/Z1livyMiil+C1XNmWDcrP8IaTY/+l+NM2BXBoSXLMnyOew/6Un
	 UZv8KqUChqbfwGKneCgdZru72qKk6DqDY4MFd5+uqdSE5NK71QuSdtgHzAu0RiTEz2
	 7ss9q5WXI9elSFcSMaGvYXMqHj7w86gQjMOhq92Y2iQDrbxLphvoI2s0KMmamJDQpe
	 PP5ytTJjxTvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71922C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136488740.23079.4869491120987663639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b299b6c6d1fbc31d6520f259396f0b91c8904ae9db4efe13a00c430165545f
Date: Sun, 18 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671364887
