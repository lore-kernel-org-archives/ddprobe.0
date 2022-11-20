Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89DEA57
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9750AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668957654;
	bh=Mbt7cbh4PbvSMGaz5FpufsjcHObUf+YBL8FxzqEGQyA=;
	h=To:Subject:From:Date:From;
	b=CABBb+ZDsEvUZPkyxhHNaSyB+zodRzWibQnQewH/XJZLxlhxMwbhSeFBkkWssOczl
	 H3RF3GB8cnBChEb8azMNGYpW+QD+JoCfpJLVzConDWvAIB3CJPgiCTSzQbJeRN1toD
	 E1K1QM9HyhG2NaC4NvRClxShcqzeFCZEtT2d4G/qBfkBxMs+Lp77bVNKhPBJ+fDKMc
	 NXQE8jXE7uz7YW22LihstAG/Pi3urQd6ZpflFTRG57CC394FOUHUw7anGuNdOXF4XV
	 FotriEH/n5sFHk9EK/EyUT4mYw6MCcfEngpcPydZ+kAOVXF9c9kSysNPDwT1bhbEUF
	 UwpSf+ZHAcFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7511CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166895765446.8875.11831102374696038233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34263afccf244da946b3d4a3ecdc7186613fb9254ad1bb27b71642438a91f91f
Date: Sun, 20 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668957654
