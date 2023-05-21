Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C24D3C27
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:52:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52E7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684677126;
	bh=jA8e+17f1DJ5VFVgelsOcM54LXeNIIl29IIhI7YEGqY=;
	h=To:Subject:From:Date:From;
	b=L89Rravb9kDZmzan0s997Z0KVvvh/mCnq9OU6xhV4oiAuVPATOuaqRSvtjWq8I6lN
	 w9CZo3fvHzPdCHE5KXCirUFjPw07UW3AoZmbGNSt8NS7lniv59mA6fgiBk8e9WMquM
	 ZXf46JYY5DfsXv7xuz3D60WHeMmIKFvSo0XCLj0TbSVTvlsXqi1lS0hxQ3yYcSKVEC
	 9mCad0uCPv39j7EBmg74QgQHvALp4M1mgmbZXbX5JUjETQZCqNnrXvjOjnt2INoRPI
	 8/1BZv1L+QnQxns9UL7DRm63lWnqhTy5Tl1FFNkv0+CQKbIMpAVitEaj8d6jCFD9bl
	 ElbrpPBYbZbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAC2C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168467712577.29063.7898161590462693289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7abcaa498902675b8424e87179d232a3db7a4fe70f00bea0e93b0f19e8696c
Date: Sun, 21 May 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684677125
