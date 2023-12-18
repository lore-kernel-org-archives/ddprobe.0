Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3AB5D723
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AigBRMRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDBCC433CA
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702921696;
	bh=ZuM8StYjg/wlHVGrqWLo1n8LhyEQxuNz91m6af8i7A8=;
	h=To:Subject:From:Date:From;
	b=AigBRMRpMC6IOiPXNQZQKuzJWGhCkf+T5akEN4Sn8+B3BGP/oP+tB41GUxkCGvTMh
	 vnDAk27+Qpc4Evc+MuUW+sO28nRvHLT4uRy59+vfGthYuFzzthQwIoH7cqR6mRmq3v
	 MEVyx3pi6jWsyVoZkezVNY8EJTsNMhKb3qaxpQ3O3XxQEZaR4DG/zdixwUBCsQd8XM
	 W0+ey2CgqAPnYaLev35vaoaE1lMIo3mHIbu4W/SpsLHkQ4mo8ryG1SioEh0Mx3y5KR
	 9B/U2h4GiN6IgIQ/SPoyPo3GFoc7pTnR053WddJSHAWzGcXptTOBPI5wzd4+2J4F9g
	 q2DlR3jlhl8PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63247C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170292169639.22282.8667037566891675497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e68e1ec5290d4d59705fbdd8d4ac40aa2441d6f1994b39582d674f5f1370bc1
Date: Mon, 18 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702921696
