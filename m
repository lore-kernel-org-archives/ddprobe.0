Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703446B3
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D614AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677067265;
	bh=1opCtqnKOV9SS+8miGudes9r4nh4TlkkEijtRXPPQno=;
	h=To:Subject:From:Date:From;
	b=LEp4hmxLTMqt6vLyfVOCGvz/LTBPAxsWnb6Hb9lpEt7mSvSO+LMzFzB9E85D84RyN
	 PlwiulavODbesfCLK/Y0JFXamkkocd2AEoLtctOn/YrSNN/HIhE3BaddDw7p91AI5p
	 JI6OdBKkrRakJK8AuD70AWWZ7d6JYeWL8iO1sypBzFheqyUT63d0uKVDOqzOaBc7Eo
	 xHmlqSlO/fV7d8NuP0uEQjYtWsmSM7rfcUSzYJuui/hD9jRJt33cdaz283+IV9oTEN
	 0crlvQh9Vv+2kqMz4lCsWK5Cl9IxSCAikf+ROAI3y8j1FNDpWneIGPW8mj8UKfugyH
	 waVjI+3B19ZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E0FC636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167706726573.10285.6420983328617968532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a9df1034e6203fd0b60521baa5c745c286a52473bcba586841d4bda59db38e
Date: Wed, 22 Feb 2023 12:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677067265
