Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623F52E3E2
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j26v8EEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE776C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697640492;
	bh=6r1nXyIA4A1YdviHGemeotP1hJUFHwZmxixE9lmYIOA=;
	h=To:Subject:From:Date:From;
	b=j26v8EEsZlcBzLM7lqO02ergMUNTtZNWx21Q8x2LUpmPk9n1LRb/jcA+JaWu9JN7Z
	 h3bVtSjsphJkry7q6NTAW/VQn6EERYQn6QDA0LZoytR+rES78VNnPlmrarAkPI0xTR
	 t/N+xQVU9ylFWfOPFuesad/USTnvRI9YDWVlBPhccAkqhhGz9BtY9E1ugMTl31mpJo
	 zQTg+e6XyNCNC6vknE8dbmaAR5E8WieGwM2eYmsreOhcC5ipc+6seny98xYQpropqw
	 KQd/lDhfx/oW82uM/z1UJgG1k1RMl9qVBndtKLiKMZccSyOsaUE6kZklFTuARzL7b6
	 xs7f4OwCmxSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31EECDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764049279.30839.9757166070209317843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cd43f0f5e1ace9343c1bb45c8858e8a306a1dc8267749ac9394bdbdbd92211
Date: Wed, 18 Oct 2023 14:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697640492
