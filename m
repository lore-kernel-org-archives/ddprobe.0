Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34861FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C379C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665307853;
	bh=+L3UUvjm1OvVZ6Va7z1qKZrwZeTrRAnGsSxiha/CAqY=;
	h=To:Subject:From:Date:From;
	b=afhI4ygKMoZToc79VkyiyafwNY4lyZmYwJ/Ed6yv/TZKIeJhHMZ5cLWj7mvB3dx6j
	 rFbQdtqcrBtMAUEtyRjdVpTJ1IoRtnTeG9a//hTM+23G/oH05XtioZD6VbgBB6bDJ0
	 eRWCt/mTEGT9/dt4fjEAAWpU8sdPXmTUolBCmSVxv9C/BFrMOpJ0UNgW0L12wBlzZS
	 5b7OmBAxg+TuJucazsJkvyPZ5WvIF4sZ6JNeNHYmPtrm0OVBQj2/VEPhzO5/1kcaHe
	 iD1LmxdHriq2acL/8p3y+3ASdpxZf1TrPJXYFe4pU4T0hkogj0QC2K3yRkil3le0hJ
	 LBYqa1rQZFMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BEFC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530785333.24387.6590300808059993440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac4fed52a82efcafe9346eedde7d0a4142dde17a6f7e9d81825d394b3a145b1
Date: Sun, 09 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665307853
