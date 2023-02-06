Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB80196
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 04:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA50DC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 04:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675658766;
	bh=FTw2JZrRw8VhR3wYEGmnY6rQMCrcqLVD2lTiFRUYFPE=;
	h=To:Subject:From:Date:From;
	b=W79RNGh0igKv0yNFu8jSYqvsm3dKGhFSvQzzDxIGLR3wswMd6+7BhrxXS0S85LA1z
	 EsCwleg6IYM+xND0m/BZVjTmgh/zITN5ioMl/W0zpH8ogfTRRTVCnbmaKGSUXOz3jJ
	 6wpYntq/8PvE71dxnjag92Dr69LGfXTqYRPatnOkJl98ASzNtkzRLVxDrsqvw6yt6q
	 In2jKTwNzMuywW2LaGE89MrKi9Hnno2ErUa91MlOeSdQNdM7M9UCz0iJBk4iuNX/Ca
	 TJYqxXq4MnvC2w02VjZmtRziVx0tDeVPb1MIpIKZmMkEhesAlbe0apTbaqUJDCcVW9
	 PVmAqtvaSaOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC85C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 04:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167565876583.13774.14490215765629564104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5a2b716697ee69d4395549abf66d4b9580f992642d338fa37064d64ff3c7c3
Date: Mon, 06 Feb 2023 04:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675658765
