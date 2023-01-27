Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B02F48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BA8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674834185;
	bh=C6Xeff5F2aE/xT1cUNIYYOyjWYMONXilWxGdFPb+ZWs=;
	h=To:Subject:From:Date:From;
	b=IesuyYo0AvEU1vdHEcRTFTJJXQJ3RcRq4Zt/5pEXWs2ZW0YHk8+pKf+UooqhKBvbk
	 o47JQ6mmfh6GsaS6jTJNpwgMzWgqAYgUgpNo4cyUdq4X1MflAKp5fceYxQUfq4gjiu
	 Up4GDhZef1uT6NQTZsB60DGX6pwgQ6Hb5vv8Qg9ZKy8rXujky9sDx5t0cSDi7QhlAV
	 i7q55+HCfQnfZ8a1ORwq3404urx3L73U8XvwnFtcjcjbjbo9wstDwOYsmfmrY5sW5y
	 YqhwlpOABMcLYUlSdLfPhuLJ2hj29DDupAhidfrE3asjgX02xoaZPx7bWWm/RN1Qt2
	 zgohCTLVn3k3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B19C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483418577.13766.14238969621722410440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ca2f83377f94c6bce42375ae0da99885a8f6ee3b1c6230030ab7e2dc5f9119
Date: Fri, 27 Jan 2023 15:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674834185
