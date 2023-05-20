Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC393D39B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684592945;
	bh=oItoUjXc5nLgtP++7KB7+/+ooBFApEdbx13rBhfFh9s=;
	h=To:Subject:From:Date:From;
	b=oaVJ/O2sWoimYz6By5j1K/CBJbsiCjJGZ4KbDSaFfTA6PskLCIdl3/L3vLdUDln+r
	 U+WNcLn03gX1PJylQ1t8xf/S9BMBU8Gp/xDS4x41NMeK2wVSpdYtPYDfZgRkQiQinI
	 iSJtlYReY7Ga84H3ldfXheRyaR3/wxcCs6cu8mloLOLSJpHeHj9AkWCiTf4QkpowVk
	 QyCs0vzx8aBlku9o5XGVnhD0WTqEHn8N0C+A+X3LQf33alfV22HfqPLaN9zNId0lyy
	 JSmTCQCA174mPk3ggPCSBk0uGIQO33b31t6AERt2Fo1eqFEYmXwHL/vueC1g6e8EJS
	 vpkykP4SI6pVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A0C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 14:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168459294578.8592.14314504347984653550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b91341cdcb6fbdb46422a3b15371aeacd91849948c9ee0ce3f86f257e43c8a
Date: Sat, 20 May 2023 14:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684592945
