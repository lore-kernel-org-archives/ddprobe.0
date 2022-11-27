Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04B817CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7B0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669557054;
	bh=4F7MzxrJXYW4aDamtjmyLHnB4xOCWuz8UdcEEbhHtRE=;
	h=To:Subject:From:Date:From;
	b=dx1qoWNpIFvN13x40ZyqERQyZOU7UwS6Quden6rbiRQdWTJReapqSGcSVDazIxtse
	 5Yddz67vx82MgA8VJehxydAxuVrqfBlmvP+x8jTb1picu1wFjWlsYoB5WANV9wkvlp
	 cBljHWiqRa5Y3KfzePjssH5cN9AEhdDFidS77afSwYb6dSFrfFgaIcwv9voyF7MUz7
	 Wd3VI1mX0gAdpUCpOZlzkRN9cSzVo0z+ddzFvz7J6Y6FlzstfbdagJsmu+zRAgawUN
	 vad8+oc2m+DYBloV06nlVgA0JKUrJK+LHp8rpKl6nKSH26aNmG3S7xgQLFMcF0nqmo
	 5R2OCErl77Bcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B4FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955705432.13388.13907002812882151651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773fa6b80ac5908b05d8617a8d020af0cc72088e788df76305921d8915030c62
Date: Sun, 27 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669557054
