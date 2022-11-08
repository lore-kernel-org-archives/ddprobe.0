Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACFA33E2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84028C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667934654;
	bh=7Ntdg4McbgI50fapFl96GqcNP6unNGRgIYRrBiY16Og=;
	h=To:Subject:From:Date:From;
	b=OJ3mXAmRiIJWkQ5kvgRWN9+ubwfXWZh6O/zmmrdn68FhyvBKNgpPTMMP9T2uBOJCb
	 ocVoTRmACLGsHEvkprFmzU1d+CORXcZ+DpBnAL609m9rR4UT42cvUQCWUmgsXf4cIh
	 qprwEot8p6sU5zrm9N0xOnJN9ihr1S+Uxz4TxgXY/6pmyfQT8+Zjd9WhlXGLyJQWGJ
	 QuLZgHXJnYOmbHY7AGNU4vBwswtK5PTNxFaJXNmLKPVWDnIhdIo7TRQK52ovAW7YhO
	 biEcmlI0XapHCi3cok8mWquNquoUBN3I+o2q/csw8Z30nyboIqtlityOqpwloAgSn8
	 nUbqz6ftaZVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645D5C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793465440.32371.11702849856108543527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1248f80392a07057962bfbd00a46c218ee0b1ef1cf4bdc7007ffbe8f9b342115
Date: Tue, 08 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667934654
