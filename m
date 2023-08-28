Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6220146A0
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D455FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693213448;
	bh=H9kBLTqWUGz0pJYZiLFFFKbLYWJ3DxF3QFNPn1dZcso=;
	h=To:Subject:From:Date:From;
	b=vKErOKBmTgr6+99Uk2bxu0X4HD5x6B2S3NVMgh3UHfJUEapOWVxbGW65rB0zEKVNQ
	 Fwfou6BrFZz/NZyw3MB0v4CBdKua2D3hN8gKL06qBLsxk/AZE9XDdcLdyGm4cYZh6s
	 oYPpLIN/DKpTJ84gt5j5mFVbHN5ZaiG/HcYU0pzapS9RxkvlaJaTHKXK6Ia/CSF4st
	 Ts2qpmDFW47jnhrIsEpt5fTjLE+vlp9bBkS4fvjFYySEN6FRDLPK8TNJRkE4aYMqou
	 6kiCcKNgO0AxhZVHb+/nVXuRwFD9np4NHpEV4+tj/aVQjyG6l7rOxyWPXpI++4Mqzs
	 Waz+igKnyHSbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D7C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169321344869.23190.2402433093116155958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb71fdd402ebde19c6fe6a96bc6423757386c9b7eeb6e7f5ee8b0fde366a3f0f
Date: Mon, 28 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693213448
