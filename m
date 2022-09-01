Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B276C66E9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689C7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662031853;
	bh=CrpIbfSuWdH/2XQC2RIV4if1jRRqQUg+y9S+cAxC12c=;
	h=To:Subject:From:Date:From;
	b=sIs3iGqepF0fMtGk9nBYQ7fJIYhMUuEzBODHU83NNjJUIuz12vHt92pM097//ZEyy
	 sQ3ckaSMgB+nPkqDoa5ALyAY7+5vi1wPiOAz6/wJbm8SEkTP2huU/L5jj6crxcG6aL
	 /Wxc0oCgHXh0YQQRWShT4f2cIVf1py9ourFtrLVWIizp0AoqVIdQ+e7QuES0x4ei4Z
	 E+p8UnhupuvAabRvsSkZc8hfORytchZs1nMXZdRIZVEAQA1b4QBuxF+H3FVLwYM+Sg
	 iF/xPW00eSOEbMJBZqwjTFWPmECkmfufwS5UoPgitKBWfyXqwENvv0DxH7uWGVufW5
	 drQFNhLOg17xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51972ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203185332.22343.12602627953374207810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a3ddf6ad10c213665df5f8221d14d885acd092cbbf2db06d6693d7873bfaa3
Date: Thu, 01 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662031853
