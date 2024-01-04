Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5BB208D8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtCnV5tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F78C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704362296;
	bh=uswApqYxKqhYSn2Nbh55KcG2eUJLqbeqyHoSdgeWe58=;
	h=To:Subject:From:Date:From;
	b=PtCnV5tvgy3xB8StXVjduMLCN2Hi/7d1MvHe7wSKvM+72ZjWD/PXb5bXoSRAk1xI3
	 4m8jjjHEyUer3VejZVQcPPjg304j98KF/B9xhyWluAyCejS64dtrIHt1CgWEmAVCMD
	 rCONZHOXLldK+AOzIJIz70bFCWkH4fSe2QzRw9MWtDaN1590DQVMCkXV+t9cL7P6G2
	 x3UJSbNFp4wTwif6Asur6sHFwXrjsCQj8q/wU2auPsU4zz6TnLmzezCLYIj/2DlxQy
	 zRatRu71DndjISe0d9rj4hqlGHIeATjqx9fYXjlXflk9pp+Doa+KaSPjv28ApxUh5k
	 dhgXBsruF17Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618A6C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170436229639.32368.16299004354806452539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73694e1311dabbdc09ec81ac1f07a678be0a9cbe6336e40f278acd6ca47ea3da
Date: Thu, 04 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704362296
