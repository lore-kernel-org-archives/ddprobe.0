Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F603D9C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE1FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666455653;
	bh=1czwZXMGZ5YTcYt+UlqE0q4aM+2J8pB7maaaOePAYHo=;
	h=To:Subject:From:Date:From;
	b=a7L8kp14KNCP6JKFYx48HXmt0CcQgbUaHQy3xN7GUF0lmHSQagsZBU4DKTt6Y51oM
	 ydgBYSXC63+pzBkG0dQ2dGPblUXDKoEiqINy4kizz3TGL3VGpLGxGBmfOKVpn1c7fo
	 EoimkPDwu2AgahNQg/yIGalb19Fxk7+pZROUPFw6A8VxwFLKqJk5rAah3/sdMbKCk6
	 0A3rMV4UTu2YV+YszZr2U11OCuL8yiKwLa/kLzN3BRB+yfLoglyQShvt/5V1aQaW2X
	 0oD6LHft5vS5i1Uh8rttP4oQ9UZDmpWxm6NuWdKrdk2melUzBRYd/L5V+KL1LrwbB5
	 59WkgHucKF5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52109C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645565332.24042.15686092470724534888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faa90ab00412096264e263ad48aabfbec4900fa3b0cf3f08a29e113a2940626
Date: Sat, 22 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666455653
