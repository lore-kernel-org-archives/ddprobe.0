Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5DE4668E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed+B1ML/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 967F6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697795296;
	bh=HNxGkeJGBNXJoTlUY8kuGzybzDUX0OL/zVxz0/eS6F8=;
	h=To:Subject:From:Date:From;
	b=Ed+B1ML/61KuckfZEK50Mj3oaIqNQ84VpkWqTwVSgb9Ry22JgMCzUcFjN1wAC/LM+
	 SNJAx+UNo/MPzBCGEjheWY1yU5Jpvia8BhGAnTA07C9MrG8wlkfy52zjgMpBc9cXU/
	 gXj9BzqX6gGu2N3WbjRJFvLkLQaeSMt7r/fUS0D11VTHDpyiCiEpNQGFMcWneEAA3+
	 ZBpLpa2cLwuR0K21vuuZb2Wi6nDZ5L0T8QsMrhmBBY9VptqBW2q0Grms4ln3LmotDP
	 czMRyxhi81BJFjNimzXy6kdCj/otuOrj8KYzDwREMxgDXx2TTlqNTypYphHRbzxuUI
	 Dhl5j2P9bEFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E57CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779529646.25637.15088025536651143194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0e8fa4469276d0832480d89529b2e99c6b67c9a62be4358219c3379629f68f
Date: Fri, 20 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697795296
