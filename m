Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D566D19
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71795C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670515254;
	bh=eRZMrqOB++Ci/xF7bZg5Ndb6IBLY1q1+0slwsJXU0Sg=;
	h=To:Subject:From:Date:From;
	b=alIV5HJLRxbZHxU98mBT4Adm45GTnEQj/dvu0ptYBznlwn3QY8E68yfZLtf9DLnaU
	 a62ULFOrvfa8B5XRnCaHUHnONMbQLlXzerBXZIwRqdstYMJs/JPTyZoGIEKaoQ6HnE
	 /P7V9dcR1mLmcFn7bc30TpYRBVBWEHwxDgDtopRD5H1aosTplJTtSmZ5Fk+LpG5HrJ
	 QNP6X0VLaNmreJvxT8itxoYVgfLpYUtB52/iyl2Y7/cNjfZ2YClXLDFEXpmKEs8oU6
	 A1XEO0qERpMtal8MCnWS2bEBe/E6D7DIcDMieyCBzzpHI4Iw3xL8xz08Teox/Nz8Tx
	 47b+ScVcrUUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFFFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051525436.12497.11493283549193042059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d47dffa5b1722a20bcf51cc467949635e6d9f41556163b96d7a920393d5d799
Date: Thu, 08 Dec 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670515254
