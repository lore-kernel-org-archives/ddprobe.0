Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C901211A
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1057C433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693266248;
	bh=INOSmgF5dNwpAvRQ4t5HEZTradW9Ak+uEbL7eOoCZ10=;
	h=To:Subject:From:Date:From;
	b=MuqfJHtVLevJOv1K8n+R+fi7bIIzNFury+L4zH3FzPmHX1hpOxUI9gIeIbd/PsNEF
	 ajGd5ZNtO4tluQxtL9L17IYyHxmAkEJMbWp2fjy1U/BPGICOioEp57OFQz61Fm4Iwl
	 5LU82xLZ/uLIf6zx3v/X+ppkKzUcu4ZXDdefe6I6Le277xIKEzy/gf4rY6CDHw/bcb
	 uJsSVxU550BXLxml9L7DTWbvhzNsw8syab6UVYfXJhJrm8YBHR0ej4K4oumUfR1Bbz
	 1CY1QtTuzhYFXEZMwQi8/X0ZhHHy5Ock9Vb9Ch4CvfbpYNc8+JZdglP6KRNJ0dk9rz
	 JoVpEXq9/qENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE313C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169326624870.3411.9002482328981942400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddfef5968a9367e82bd129ec608d3d1cc3e392132007afd23b50ba567b3b70b
Date: Mon, 28 Aug 2023 23:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693266248
