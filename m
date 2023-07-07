Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633A21876
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52C2C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688701628;
	bh=/FIKd92U/yZhpl29M6qeiIEde7atHqsvINDQL/6D7V0=;
	h=To:Subject:From:Date:From;
	b=Lt5FNqtpCNOGyJ+vtjEW64HzyUrkL085WRpRv0bjvdhfPSqDtnL/SinbqgTPzQfY1
	 rZK4M11A6zZPdKPgBh4S9Dd0Ig608H4TQz7ePOU1Bwz2nLzHAZBMxnxzm2m3WTNWGP
	 Ll23PN3/kDEE05OWGwsPOky6L73pay54v10miCYHQb8bN9cTZRuY+Ai/eJDOo1zO4W
	 s8ZoYUS5gkm3i4vXNPsuAeuXGnB1kAVpUXuunpQLje8Ttlv/8R8kK2upGe7d7QhrT7
	 KfN7veCD1SVCdJXVI5EEe6RDu9vx0H0+K1xnB1IgKhtnn6mJ3oi2s9/ShYf3/rBY3r
	 k20vZktN0AqQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8660EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870162867.24537.14293527729407729414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e402c979ad73b1026795be35ea85830fccde6cd248b8bd7bc722816b67dfb121
Date: Fri, 07 Jul 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688701628
