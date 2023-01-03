Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3187F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91A85C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672711887;
	bh=dz9P2tb2Q7Mmi4VVedjfY8AuIABvLRVWh18CflPHfyA=;
	h=To:Subject:From:Date:From;
	b=Zk/XAiGcjFsnU+C8qxF8PK47lwnPjapaHbEUW8eZ0sMfPUBivzIqsqfXnRjbEEH/8
	 PGy5xXgnlLZfPVr970jXuaWZA5vpz840tRdamAjYEfdROCFdASeRF3+ZBnb5b+sFp0
	 9cA9Ddrrkfppr9bo8982H/DVG7MWyTkHnr/hIebUV7DNhSUNOfX5HiKLujAKx8/qrm
	 91WmAlZISk9JHCk4w+VHaO8THKrx8ui/4yUYwfeoz9SjMe2XEL3FjJtGFAKQAlJ99L
	 MZXAToMKCmh9Xnpom5KOrBhfI8Da4uMAQy23rLt0/NedpCJT14u54EjKGviY8RF7N3
	 X3kE8BDQOkejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74BEEC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271188744.12536.18316927328272389406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc82f646db1a2770637dcd7aae38cbb6cb22b6039c02ec8a3158fb21247b6b6
Date: Tue, 03 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672711887
