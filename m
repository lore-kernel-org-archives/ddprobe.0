Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4792F50
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97260C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671235287;
	bh=fIxX+lEGATPuEtR2fCoEXEFR2XMhSbxMx5YGJmZzasw=;
	h=To:Subject:From:Date:From;
	b=UUH6fWQEvufso6juUyTfDZGjnSIjXCv7D53zAq283OkP/c+4lDVxkgJLuuWL6lmBL
	 RtAW+JkcOaez/4znCAoeR2FjfUayjYNivNbrnLVOnOO7ZSCi05uy1nslBQ97hckK54
	 YV+hpBapKUrq9T9sgGAgTHTytvHgyeUXNrSoPKJNLbd5vGGN1KQKhpgG7yddHyNCb0
	 4Z+8B05fyfwr5C6v7iA1AkOadORQEGq5dwLKEXo/szOLiGOlmBfTCrGYptzCoClGBk
	 +IZwIlFoD9N+uh7awjqI7OccgT0acKHvqscX+m0fP3do+Vj99OCNHRnVdAwzMwTZYi
	 5BsWXmtVjYa5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DD09C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123528749.5052.1250468060331808577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3505ed24de911af856c314807e9c986557e319dc8e3dd83e550c214799c420c3
Date: Sat, 17 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671235287
