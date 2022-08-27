Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91EE15A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DE8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661563852;
	bh=7lBysKp4HnYOVX++1stTMUKfUYfCtM2IoIaXVwzZJvc=;
	h=To:Subject:From:Date:From;
	b=uQmgRv2gZ0FKsNM9pTSQLcQHL5R+H5/PM3h89uFDFqFPZciAsLQBWuUTe3Pb6+6XJ
	 06OJAxFj1W1gFo7Au6kPb9tNFfmS/rpqpAyjNtBiq4qDDV2H89lTsQa4+DLELhC891
	 Gf8xsfbNfS2jJY2eQDPPFwoYTUprBWTXERToLUF7STDxhoZA1oNsMw9WU2yu5qJRt7
	 8cBY5CLyz/TKWHXwtAE3D3bQyWfKvPrcufN632Khf7J629uUsZ0vHHx3e3F4078INl
	 aDWAAthy28HOJlYzQ1ufD1Zt8mGBDbrd79kLmcUGlKD99Z9KF3yGPQuMxZ1caurbVn
	 mBeUV+8Xivb0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F643ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 01:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156385238.32054.14512922595313178822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0732bbe7edb383c359f7d2530f8d410991894c563efd6c25bd7dd33084edbe3
Date: Sat, 27 Aug 2022 01:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661563852
