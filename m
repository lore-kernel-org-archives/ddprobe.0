Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37C86AB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+Z8UhUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800F5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700810296;
	bh=aV+zNI2Agsf4itYrwZdfZMVqjVrkc2hd7/FaKk53wwQ=;
	h=To:Subject:From:Date:From;
	b=c+Z8UhUz+dxE6PxTxO0tEgN4n3aqLNDBS85649cTZIg1qAmDwyOX4pzGOgqR6+MVo
	 vnxJ65vKhpoX3TrdkUUn6wFOpzws0G+dODc7U1rtP/xpv47FqRKHgh062bA5x2uzEq
	 Jr9vxJ/Jonfr4GEG2h+os42ScSVfUId9cvTTZNyjXKz3lhPGzPZRlHb6rXWLXt+xy5
	 GEyu9KxOBC87sjbgNdls75UxuW/OsEBntPMjaYQXcgNitFrXBqu3nUZQP1uwbGAwOE
	 UM/mX6Hd3/zS8gIX3F9Z7wne1T1CfYi5NVIpF4JRs1d1a9pAjfacL1g06BU8pxVh3K
	 Lp4TvLhDbb2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6792FC61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081029641.9732.9681429884183479999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ccabebd9cb21ecd99b92f05e5bfc408d365729ff9afa6c83b10bb6d5ece79c
Date: Fri, 24 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700810296
