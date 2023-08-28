Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C83B12B86
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB04C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693246448;
	bh=hlYEP2wWCAnBF4i/evpVTJ+lR5h5bznnnQFwlbDny0c=;
	h=To:Subject:From:Date:From;
	b=Tuwzhaob23P/eakcbY60KmDZFFJVFJ8IobpXx/kmkWOb69qir6IZ9Hq12bwySzVo8
	 wRIGVbH7wHyki+N+6hSNgr8KP1HcchauQqAB9a8hIDTafh8NCYwZfu4NnmNCfBja5C
	 EaTkpOzqABaB+BHvCX17IvRTpXItlp6nldVatmUOFHdHW4kLCLN7rk8p6WGwg4+DZC
	 UBSf9q62KIVEyWtK1tg6nSOvtUicGqqA2AqSVqmCMgd9ecOINIPjdrhOOCaiTQzCgC
	 FEhujTw5E7tPpeT5qXWWGfTeOt/O/YE1SI7N0DbK3Dw1fPI+NgB0UIlbBIGrBp46O3
	 I8//8f5YXa0gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9858C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 18:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169324644868.11375.16663404232562520725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0853ba49cbd20763400da5a2c7914dd3335616463e15fe8930568fd81c3c20f
Date: Mon, 28 Aug 2023 18:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693246448
