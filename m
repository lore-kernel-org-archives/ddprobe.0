Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA60E137C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFE5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666015253;
	bh=nB6yUjt3hcXeGgC9gZl0TSAq8hXWaI0Kp0o3QPa94yM=;
	h=To:Subject:From:Date:From;
	b=NC+zmkml/+5W1kpXXaqU7XUygYgh0d45IlmcuUkBIdZmV8g2gvOVOvGhxq9JjY86s
	 8exVLAJi/ffnaX6g0+R2ApaqmVhbyATneH9PyX7urngEvAcEh2deXbliRwpn2XlLou
	 CO4UmXVGwsiv6U6PtHY1yOp+L6lkpvmzLNMS0FhLk5PVlKGmaFGvbqCuiHdVNvVFA1
	 PK1Rf7tuSM09vPlx947L/T/AuNtO+/XNkuznEtYJ1gqi5+Hth9iVAOOHI+TPMMcmsN
	 +51UujFNTQuuTuiNhwiuSoWSz9LjSM5mklrajXyUAmj7p4WTVP0ooLAO7J/uGLkQen
	 PLSIUuaJaoHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61ADDC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601525338.11932.17699066779134058595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296f742a48ea2a084e3d6eeae964f5962bb9921acc690a9001f5b44aab132f5a
Date: Mon, 17 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666015253
