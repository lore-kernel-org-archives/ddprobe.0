Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1BD7E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ACD0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669711854;
	bh=CeJ8vlD7IfwFDV5L0vkRpoPeZl44rv3dWmbB562r1pw=;
	h=To:Subject:From:Date:From;
	b=PLr4T5dOZ9aSgk3Ryqq6UC369IwlASUAe3GjFuXiE7cOZT24Sb6FtYiGV3lvSILUL
	 mTj1fCXGxNp7EfBAhBhuo8smZvjMZ58pTij2l0XDzupP86qzvotpZjIDc1FUsTfI7y
	 PBvEFDJOZVNrODNLoRRmafXIRbS17CsCfBbYqJtlsPFuoPX3WbgygBUXY1WgXtFRXa
	 XKEixv7SNzRxL6mUtZMxEizrTOA/42HGnIippi2GFocU6Bxgvk/6ZVkFGmU4zk6Sxm
	 gc+9IizEDi3daqYAf7p4qwlwZvrY8Lbzs6H8ZRJUzqdgedRCa/P9SNa2OfnUJDx3Mp
	 /U2RKfc3u5uHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B58C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971185432.10141.7582626871549998643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8214176089c10796bbe8aefaa845eae9a29fc0c71008a1cb54490fd796c25e2
Date: Tue, 29 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669711854
