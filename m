Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2D6107BE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 12:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA19FC433C9
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695816968;
	bh=ikdW+0PGGFMET027AzQD1xN21/Jxx/8GATBEoOouqbw=;
	h=To:Subject:From:Date:From;
	b=iJrdoqPIWoVtxwD9kKHE5D+4ees4zSERDbDGp7Y7an28CChJcCKf3fVNy43Wx0/TK
	 7t0aeHeaFUKne1/cAwFtuBW7oeRi4YEnAXinKr5bztZSDvkiZ8XtvhF2qL/tulbsri
	 3MB1NGCir7aLr9aRY29U2stuGZBx3w+qS7U1YSNQ8MC8/MJRqn9pcIY7misMqxPlLF
	 PfNS/QFL65Lv3r+15hjBKnCm2GcYY+XW3UpVmRc21JKFrFjMEtsrfArD3yWDJZ9fYT
	 n2EE+bf7uAl4Wp7XKt3OQ5XWugedwXAqwHHvhSisZk7tDXQa06TVOKOqapg290NXZd
	 EuR0FDCmwlbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2ECE810DA
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 12:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169581696869.30936.2734479137619221541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e8ef69026f681a1285fe34f6c03f9a288e088c2cf531c5f2887b87369bc7b4
Date: Wed, 27 Sep 2023 12:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695816968
