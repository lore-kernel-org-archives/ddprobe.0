Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616021CA93
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrWgSZTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98A1C433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696596428;
	bh=4uxqzORJIYHs+FAHZf6jhdW/JqwCWkFy0XcNqW+be3w=;
	h=To:Subject:From:Date:From;
	b=HrWgSZTYnUX5XJDunFTbWabD5bS4iv95ObCUieMfwrWVWyFJzDLZwYWWHyh+QePFQ
	 WnFewLm6ly/Q+yyM33SDnUVcsQF7AXwehVrSozVs+MKRIr38TXSfMQLK7ZZMHyNHJ5
	 yazNCLIrswRgV+Re4ribTewvD7qcMVvaQjhHj47iCyJIhS5Qr9n1G/Q1MdEALtr78G
	 0njuwKM3YMs6o6mHGQMNKKBroHsuZvAgjFqSWmwldNEanQmkYqRci6p3+zVnmJaate
	 mE+J00XIscy6QgSs1J7j2QvmslP92gpTd35zg14sPtA+doFRlOTSh3Db5OsSD68krY
	 nm1Z5I7fwn5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40D7E81DE9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169659642868.23138.7053495350981819945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d7c825009add213456c74101c65f0c76e6643e73d7dc1b916da165b6a905d2
Date: Fri, 06 Oct 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696596428
