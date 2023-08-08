Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C438F69
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4998C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691525588;
	bh=pQNORDWdCwAG8igWVqRvIf/LySVSqLqE+MvQJ25uySw=;
	h=To:Subject:From:Date:From;
	b=NYYNcYQw3ARGMKV5VAM94/vusTVAYtwVpsBYTkN33rVasbb8qmHJRj3UasjtH316O
	 wmfDkUP6U3lnQyATHaLZ7FJ/Gt5Png7RaOj8Zq/Qxe4T78X7pPa6sshKwJnntCYj9X
	 UYvdjE+/zaHUZgDX5U4eHoija76osvpLnbj3ibUCKBiPitCXWXT5FRUVWz4GV8tlNb
	 sKXJRfo7035W9ssPq34FzKCtMTVfsc3NV3V2Qlw1rnbBFog9p0XUMIHVgTl1PuyRaE
	 zgf+/GRhV29FIYW3dlV20afTLRrQLQelpWE9jRJLWfp1psl5fF5kFcYH6jJfreesVf
	 lJKTyGGLGWvaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5AFC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152558877.27508.8198128277255982751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45117caba69fc3e65b10746501a75ff97f722876c8c54ddb82d26e446ec84234
Date: Tue, 08 Aug 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691525588
