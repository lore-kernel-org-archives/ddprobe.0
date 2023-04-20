Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CAB17ED
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADA0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681958705;
	bh=dDBZ5z1l0F9LzxRKnVznP2So2ugAoL4OH3P6Caqn37c=;
	h=To:Subject:From:Date:From;
	b=NslX4y5eW8rFlZPqbxceVZpPrEisQU9wIuUZCDA8ISSNUp4SLyHGw7mZv+TozZmsv
	 r0pGnPCcGr30ClJzY+hXfazwwxhDrBLDTW4Pnjxj0vWY1UVHNZJcd3cdAmz9duKzzl
	 JIEsL5+mLD+CCDiPKvs48fTZW2G0yJ6uHD7bNFRMuFyU8FWH1pOpRGI7cmQfXkXndu
	 PjV+LKyhmdmCdYhdqeESvmFkiGgnWl3URCXNW25GOngskipIzPvU6dkjKZIfw+KYCD
	 Je1VcxgQ3LzErBuitVXtgnirjPKmx0FORW0fg3JB7cDxXDU5jbCKiilV9Cf4rut7GX
	 VGBRzrGbIxAZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFABEC6FD18
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 02:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168195870577.14462.1309513487003665584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd510a532eb5fc17bc8a0406ce0b12919f9edc3f641c8c31c6b1841652ab9a67
Date: Thu, 20 Apr 2023 02:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681958705
