Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D099B7EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B78C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672821687;
	bh=Z25KjalF8h877HwU/sgxCEfn3ApGiXvn8wxYPLe8hZ0=;
	h=To:Subject:From:Date:From;
	b=mrXLOb6Q9K/56TLk7igH/gO9RFymWDcEAZOdmhJC2v4DNQQutKuXZwdTwu7cziYwD
	 5s3RdHnewjp+Ibk8whdJV+51G6i/J4rlN3BNF/IVHGWtfLh85H+LTme6DKe0oPkadw
	 2BU7CQc1sUMmFKYabOIh0+we0D8v+KmBtEhHaHHTq+CUNzk4ERvE3+oaT+toufX9R8
	 no2PNaux4zpqk1ACwsXhT5e6Az7hkr4Wkl804/dltYYclpkDKPvrrY9Zp6wlu8/vuZ
	 +HZUKR5YjIIcxOwQMnvcON5UprV7sCfWRHxAWIzjieo21mHUrFWv25llCfWuzenqRd
	 EV26OxtlJ1upA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CEEC4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282168740.16073.2211186189429980436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934f05a0fb94efb08e3d17b28d85cc491c3e5b51c6d9bd95c3449515f9b4488a
Date: Wed, 04 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672821687
