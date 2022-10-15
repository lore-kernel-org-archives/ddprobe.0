Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB81080C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745B0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665835253;
	bh=cwGv2HikVbqx6bGLAk/oWQnOyQtpuNK6cOBUZ4aBPp4=;
	h=To:Subject:From:Date:From;
	b=XZRtnS6CiqpxX5yetd8V0Gh9iLE3zKshsmEpreZy3vxhhsZwD780c13l7+/kNit+J
	 o+hML9Qq4FeJhARM5+hk/PQwJlshW+pC+0t0N93mAjdKAVVEIUkuutmz3cDzrr2LDF
	 D4CPIIlH0B/BJPfsRhUOuQ213uKqcQRw2rEiHbrx/u9v3ftsjMaevsFpi8Q0SHspFt
	 Iwd3VyT1OhZsEV0nCiRUwkVvIVe/xUL9m5PWYJCrqDrrhExtjvZiv9V36+g+U2w+B/
	 E60XmuSqhTpcozSNa1/twwLnG5pqykNcjrJL0zCaOEFkY//RU930O1oWO0AALT3Wzk
	 Xv1JRwsB36wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571D9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583525334.7904.15226605394418291462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54da8b9b950f6428df1daad19ed6feaf2d353b05d516caecfd7584e67e7fa060
Date: Sat, 15 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665835253
