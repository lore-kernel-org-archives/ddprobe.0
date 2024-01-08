Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1CA5675B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD0SVPuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8128CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704754096;
	bh=sXwptB79ryKec0eMq+JQbNTNZR8X2l2ybD2lDJzTxfU=;
	h=To:Subject:From:Date:From;
	b=pD0SVPuQn/tjQWQhYWF3QduI+ZvWZSX6r4t3+yVycqPepEVylyo+grcXfubYSIcUF
	 YzKtdekFF2LkXesr1v0QQ5IydcmRyN/fwsjBUs1ZkME6MfcyZC+4bFBLLTx60NKjiA
	 NnjsCdrTkIVAkCdMzAg1x673BZkVgKHrN8HNezfrRfB8IjRRJuCP/+9ox+sSraDMf0
	 zPaxjfxAW1kSWZSfal0mSzJFhQkhL0BeWGTHTCnQWuXfzdLijg2lzEDZhroPXKHv6k
	 FTGSydIjIjuxk41uaDo6X+UqLHbIDbuUHo2XFYrIS6+vm7m+c2i0MRx0lVmfs4Uymj
	 WHz0qwAVBupXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677C3C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170475409641.23508.746655385394033124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2df66a165506d16ccc6cac806dbaa29749b2e102aaeeb3d9b23ea9508912b54
Date: Mon, 08 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704754096
