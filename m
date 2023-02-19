Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3159E80F
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 06:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D765BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676789825;
	bh=zAg3WjwO8/YfgLUOOFWU5KmxgZzIkl7yR9rISU6JjX0=;
	h=To:Subject:From:Date:From;
	b=gpsnmXGhyR1JdfE1PVs7H3YR3UFzx84BmOf26fwfmc6e64n/njWq5hEyX8ixlxUIh
	 IwFWCHrd1/9rOy/QUJnO6BTgqlfg2EtUxCnDvUaXXAwkBC/116GhCCWouiQdNjk0cR
	 po6lC1tFElupJqMJFoB/Yh5Q1QCHIsNTd9+2ygRKC7iOppvsYN+wF7JHmnsxo+LVQL
	 qCDOxovX/W85ngIYww2xeqDJsxQZ0ViW60+9GxOvSyGkG3C4Y4pqpWQwVXdxt2HlJs
	 9vxqjwAVFs7NYoLJQG3uUj+YTIVul+Ef3+wl/Tfo++5RD9TG7Jz8SubFG3wXZ/WACQ
	 d0kcPOWioJQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4EEC05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167678982572.28048.3476009098772712054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e30320009fb767d4b76a44dcfe331061aa424ac872b91e8167214c0d5488651
Date: Sun, 19 Feb 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676789825
