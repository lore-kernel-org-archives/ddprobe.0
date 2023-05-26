Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D672CA9
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06BEFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685137566;
	bh=LGZTF+vcrifTkNcrAy09E3b2Lr9Qjz3k0uP9H5/jjyQ=;
	h=To:Subject:From:Date:From;
	b=KIPOFSJurrhbtsVr0vAV/emnl6q8dJIOiO5Z/CtWR62whk2C8UG23om05PK1sXZ+r
	 6s0IG6/ecbmqww47JV8S3y2OJUOOIe/GiH7JQxJrldNTmbelU79qfGO9TH7GeqcZmU
	 ZIZkm0FGIAL2KRC/+LpZLXkz2u/LHCZeW289DlESiyIky60+b923cb58fhTjNE8Xss
	 IOaRtD3Gr61m1F/qaJPhBW0ZMGNeK7lfd3zrhoaq2BVMJRp/MJRLCzmX7qnxw63uRz
	 8kGqa/QcdhfX6jpSgdXap2kV2oNLMd7NR/iv/ThwkMskhGkfDyIr30Nq5PSEM9E2Np
	 vrYdxENKy4P4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CDEC77B73
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 21:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513756584.16940.16210505768863541163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e36563d0708342000c14f191657b1fb0f9f04390e1cf81d1e3d798bb6bb0b3
Date: Fri, 26 May 2023 21:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685137565
