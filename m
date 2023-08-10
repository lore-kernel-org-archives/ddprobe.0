Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5A3442C
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4215C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691668988;
	bh=mohLaGPpWRmWCd0wno2HBag0jHnk8M4tNG64HN/AWHw=;
	h=To:Subject:From:Date:From;
	b=p6bN6p1OgUYQ2na1CC8oH+9UTHYn6hnHcKj4Uwb3wxw8pYrXUNnjH0u6OuEbLvDbD
	 cM7wv5A8WoCuFZtCL3S/lfy4HtzFtabZwWpu6mGWJgxDEr6ppFQI9V9ys2f0nkQYex
	 OLLsDl5qZccMOPvAIWCOOK74fIF9ukzwq4e6EiJKuIXbxcAIj9Q4I8CTKRCKyIHhQ7
	 Ogz4y5vC+wFGfFJ8AuO9RMI6g/MEs8aKn9jM/Sy2irGzk72Rq3e4p6z+QAox6kWeyX
	 2V2QKRIcbj8DDzLE35h+Swcjajoj1+NkXI0drU86mbqyRjFbS3KNVqtco8dE7ZOwc7
	 FS42YZX8y+ELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAA5C001E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166898869.7033.4187199048645702477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b42435bfb3a1ee6cd912c94d1f8ebb6299ae6ac69c274c8f00eaaf7256dcda
Date: Thu, 10 Aug 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691668988
