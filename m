Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A04F1F5F7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD87cxqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBACAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697717293;
	bh=0rlbvUC3HoupscJg5l5h+NzaJJXnekA79hlpzGX1oGk=;
	h=To:Subject:From:Date:From;
	b=uD87cxqcEf5s4/oX+pv1f5MY7CgddXxH7BMjG6T5WaVSo6rLW+VQmX0yuDka3g78M
	 ibYgqDOMCozNMLDmABQyH5hB75IkcDx9FRU+hEIjqAfgSOuvNTIa0Bn9YiLIToouaB
	 qLWqBuZ1VDfU0a+OGAzEeXyY8ReS5pkbg9UyBG/dwcQJiiBPE7ExSt6VELhTdZX2/z
	 iI8r/aDYvO/uuFwirfuYYz0lzEtmGp3iF7ukSsBHFpgmPyAvFH2iZ4gtBVsOrugBmC
	 sIVz+XUkucFkjkKhOUJqq4fydNRi7kSDZqvhz9Mew3jYJcnH3zmMDZ6PceMo/Spb2Q
	 jYGhWRywuSWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB49FCDB483
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 12:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169771729282.11915.17692685542433965706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e0320be245328ba64268f59e252b0f5619404a01570b180a371e0683896d29
Date: Thu, 19 Oct 2023 12:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697717292
