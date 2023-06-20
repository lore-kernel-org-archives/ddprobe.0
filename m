Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC238488
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2228C433C9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687254128;
	bh=CYj4onjw3X9iyu8eYjoFO+7Rv5VY5iArv5fGHyIA+Rw=;
	h=To:Subject:From:Date:From;
	b=HjXMb/0kiOFxm719fgDfEo+w/yOBYU1BBWNYNvr6Lh8/A3JLkiv03n382PKrJcg9a
	 7Nbl66O1bJi4SD+kfZra2G2HMLVVLBWia6T1kS6AvnR5L4n6B3qWPxYRq2kvQzEhT8
	 j7k/hT2WWeZhSSp0GaltQI8ssbk526uHLJ3pwt/q2rEQv51ZDro6rLc63XY7/Cer02
	 MA1dG+xIBpgjhffOBE2u3pMxgzdXqgVaDn/SA7bCPhXZQOwR6nvMQp8EJSzyfeyNpK
	 1cp31qph7OR41jXwFvykkaU/OkBGlL5r4IWhHgTV3+XWWs/cC7IrMk4eW0kfMfOhWQ
	 s7ElKqHZZLNLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BDBEB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725412867.19707.11827177371646365974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0d6fc37c52733bdefb80f7bdc4387bf71f5c990de3c0e9a3579c6ebc1a3afb
Date: Tue, 20 Jun 2023 09:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687254128
