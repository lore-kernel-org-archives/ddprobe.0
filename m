Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD807F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FD6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675407365;
	bh=HvHyP8/5P3LIyBO3wwMWqulF9qI4FFAyn8BwuhEYJDg=;
	h=To:Subject:From:Date:From;
	b=eSL76XcEc8KN+hCV10sMofs0kOxlvx46ATWk2OvAYtiIWt5Qlsc7PmWPPAinNsNFd
	 6XeDchl0bjfBD+8dhjeOfu1Rt1PwsdofHLav5brhtk8vjgIMcTG5FH4ZEa0L6Odwcu
	 6bi0v8t8OUyqUHntC7nFFJ3MvzNWr5VALy3gwAq9eZV+qKEyBakKd2XVT9UX95Whew
	 Pl0cbhGdW1iP9HC9gMDoLYTH/WTc+3kwXRFDkOTSOnWknM2lDyFMRxkKy4Kq8q1Ea5
	 OfzykiIqXoXC6DFxZUvUhbGl5D22TyBlLZLRH5gP0ayGSyoU2FV38bjF2C8w+yrooQ
	 Bv1uaYfL35uEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4FEC61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540736582.8686.16931597680474225964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4e75bf56a50cb5b8a48311d32667fb6314138bf0fc8c4da02e7032f99195b9
Date: Fri, 03 Feb 2023 06:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675407365
