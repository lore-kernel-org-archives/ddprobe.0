Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D91F1111
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 07:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D476BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 07:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676186045;
	bh=B1RL0/zxVhkDv7JbUvZOjP2P9gGLuiz+tBBUMGzJpk0=;
	h=To:Subject:From:Date:From;
	b=XqrQSijJ+WjCuBxPpUe8p9qtoNsQZf22jR5ZEEUnMajtx3VSfnZ/b5yPLv6NYvZl3
	 ZagI8F5qXj3xQfXJ+m9TcZUUOw5CqwaYVS18/iyoiWD30Dj/YZpobmk5/uxfzXK1x5
	 jk5+yvlcbbIK/tpdgaEOT8OXQkLGvo/wIm+1IJTlsdJydXYbiBqFkwAFfQdUJIEqId
	 5qfwjv2p7EZXyTeeC70C+e9s9n3wQhbjo0cT8Nrv2VB3d2ePXMfmdsvq0LvWa+BEKQ
	 oBfv4VlLsE2uKmdh68UbDJ6OtSdS/qFtNQAYdmloGDc4JBxjxBRTyOePh1/HJ0a48X
	 ai7KhOmTMrsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8ABFC636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 07:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167618604572.4810.5505472529558788770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628789635c6f912127f8cc96c03e3683351d577c920f7c5a5e478da1a9f411a7
Date: Sun, 12 Feb 2023 07:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676186045
