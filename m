Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBA28F44
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B28C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682015226;
	bh=FP0NhwGzcLhPYmpCTnM7fy0kLmF0WTD0Q/wGuuIo+X0=;
	h=To:Subject:From:Date:From;
	b=kcH9QzJWAH879vH318xMzgC6jW7wgRhlVruMBYEYynoKOu8kHtKiqrY7rJsFXUJS0
	 lawi3fDUR16UbPRVWoOzIIu8DwbB29BdoNJdlCpt6WmkLxV+KtxzZXJMGHQGY+KjYU
	 lAMV062anHnOp4Jb0AtAkVzOXTFPyjqrSNu1bTziw6ymfphv2jTAjMMv1/A+Q120OX
	 /0JLQ8Lz71UiyRA9Aa55wUpTsn3KGZbGjTaLQQfVlZDTGJ0VfJTfOBH0jGhMSffsZ7
	 oJfGXH9Wqrh5Iubt/1idtHxb2g0UoCphZJp6OzoQF2MeDcb++OZgykPBymJpDO/c9Z
	 SigFH4dwrBrpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE927C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168201522576.25419.18348164292697690353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8df7acd563045659bb826564f85a1947fe3e9d8a543f2be9471c4bd27b8727
Date: Thu, 20 Apr 2023 18:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682015225
