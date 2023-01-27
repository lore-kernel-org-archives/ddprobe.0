Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3766B5221
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7296C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674857585;
	bh=XA7ANYu8RPAImMF3bAwKsj566crzhatD1hgw/pKitNI=;
	h=To:Subject:From:Date:From;
	b=BUSH3jp28SOWZd7Y+jowuAzzg37Otnitz6OYntdAX1fxDC0x8ztddKV0rcxds2v5J
	 VMtOGeBobqmF3BcOuLib+PMbRKlZRcSjw7hwagTPVwQ8wSCTCAPGK4ZMdlBFee7eze
	 rGIL0bHh+WffWm2GMmxZazEv3S4x1sLktaCETGO+nz9aXtDXOxvcCTv7BZh00xzVIB
	 PzEzlY1XETAeLafz5YnlUHGBpqGLd8nLWrlRduSI7ul46x2FcJ/XuDp1MmqH9xjVvV
	 Pf/lmF4aFPwmHLH280QDXhbY8+S4AvlTF3FfB2laN8t4kR3EIaE+u1u1H9RoiWIuiv
	 2atepkhDC+hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE16C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485758576.4205.14173048320777279108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b67539c9358d08a377cc3658af536e64c304bb5088816b854bf66b9af0b003
Date: Fri, 27 Jan 2023 22:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674857585
