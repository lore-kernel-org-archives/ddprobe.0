Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2DDA5A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43C9C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688615228;
	bh=gUcJszaOgclyXJx+jMdl7JwPyE36nb3YHxJdzhfNF6E=;
	h=To:Subject:From:Date:From;
	b=o/uOtyz8/SS/vEA1C/vn41HAKvOz7WOA3YdRgoiqahQh6ay4ZE4CoqDLRWCQ675Sd
	 u8WHTbxnceIXEn7/ecinTl2Nxm0SlXT3+fPadY+t0TiFCte7cHhlFivffOVLZx0KZu
	 hd5caLQ5rwTCY+HYPMbfbV++Z/jWlKw6JSTgQo4STHlKIWIrQa2oSmChZc69FHFg+m
	 N+KfQm6v/iaTDk5v3vMz1AmoML82RJqb1KKr2r7n341xSjW8r74oWKO0qjZFdtEXn4
	 6fd9cNJcKUVRat9oryyD0+/oKMsNub7Kkt93cJDo0dzY36DUTSruYbl66JvT/pyx7T
	 lpun+ImXahZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B516BEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861522873.14220.8039435016170494885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dddef8291d5cbde7626a4fbd81dba85c59f3ef3c1fde7e5f590ed3f4dee14fc
Date: Thu, 06 Jul 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688615228
