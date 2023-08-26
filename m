Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F281C29
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC41EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693040648;
	bh=020Mpl3jrRqbRsnRDs2BOuQtqIr3Y/6Vau+sjEkBB7w=;
	h=To:Subject:From:Date:From;
	b=DsLeAMKCA8HXJwwdcIsCpuSriAalyaJOqlZnpZrFFE/xM5eD3n6CJ1T+UKvzlaONZ
	 vYI7FDscvBGLiizmtATv8P4josBMSWFyfqXKxy7H7sYOSrwBVqdlx9ME1EMdzanLdt
	 xQZOURU/Kgn1lGcE1wMfcWBjkkQBb1bH3Vzbm5RCtMy5B08WRLv5xKtbQ5erN7qCOU
	 FXge8XPC5jaySAy3UDbJOYymFRCrhYX9JtO4IFBxsxMlhzv6JyDWRv/UNgQ8LAIq9a
	 H2qfRFL6GeYrByA5JOBcMlfiUrem3PT1+ainlNOh4BVfk141EXyDFrQXu6pkI5Qncv
	 s6KLtsQFBAlmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FCC83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169304064869.24639.1820332731017374218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8182b1d39aa12b2c5c8f13051d83d7070c41896d30fbf4b351ca46c4b78c5b
Date: Sat, 26 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693040648
