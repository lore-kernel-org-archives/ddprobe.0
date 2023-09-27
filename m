Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC511A586
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6758C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695844568;
	bh=wFkoUfXOc68TKdW+lB6Ar2ZdgI5bOiCyiSuGMsiLfYs=;
	h=To:Subject:From:Date:From;
	b=mH7wfo0rJ2lT8BBpYUlg7c1C3zvq3Pq5SzKvr59IXeZjhGk4vME4i+lV6GuN4ZSqG
	 +eUI3qnLwzW+NtvNiWD3EPaTIz0qDmL4VI6yMWkgTaSh9RKFZW986YAADih7w8xibz
	 bUSM3xHlNY3i2XhLr+XH6kwuVxdoAo4coNcnfF5zjTtclChJKLWgn8RyL4ziIgInD2
	 lmksrtQTQ4GtqKgZRk4Db4M+9pJMS+GkFzxZiEOcO7ndEkyvm9OaCwsV0KN4hALMte
	 UvXTkVyzUtIw/XBLHGfDtnA0DwlPqqNNFG5wNeP96uoMM4yZAz01OkEq++r9MJXHnq
	 5RKS+tZ196NkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5EFE82CCC
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 19:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169584456868.2117.2508503933915583647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9857e67c3acf3e78ac2e2b7a25ddd30ea62fece750e603f0ef55301365e000
Date: Wed, 27 Sep 2023 19:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695844568
