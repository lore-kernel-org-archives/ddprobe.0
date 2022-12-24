Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C3A28E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8017DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671884487;
	bh=5KsnmP/9TiJrNtjFoAj+R2/JA5Qxb98ybhTD1jnXpmg=;
	h=To:Subject:From:Date:From;
	b=brez5pYV1xfTAucvjPqbX16yXHnZwrIBD7CQcgAVHLfmZofN6oa6qa3rgPYy2/RVr
	 XiQcaZ3vtfsBt7TRt/XigpMzkzp1srVcMMo73UiJZcKssvaTEy3lm6MxzmWnG5fAYa
	 neySM6RImLxIey9gyYhVRLnSpKfuFke/RLqHfpvrW2GXtp1UhOapbfWThbI3rEiMW2
	 qcXHWdtmat6IhUhSeO3mI1xaMXY3pwJz2ZYzUGTiy9l1Ff5BTK9Z5Xbnp355YsJYDR
	 3JGwGttbQxbqBC89gTRr1Q/jqWgipRnKTF453rhdx0f5VKMLdkLGLiOF5zaqxqD9DZ
	 tCe3xiVlNGZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6282EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188448739.17151.13980859614949763601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4c990f7d76d441c817421d8c1696d7debd09d7d2282d5eac4d5754417ac093
Date: Sat, 24 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671884487
