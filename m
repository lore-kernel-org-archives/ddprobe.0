Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679AB882F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E53C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688514368;
	bh=6mxNW+erjAwFDsvS/pHKkOKmPhN+pz/KgGnJCe9staE=;
	h=To:Subject:From:Date:From;
	b=Tix/QNefBRfrFSlbSSWpMMN2efymvugRdzKv9AWhOlBuHyEFk4UXpzmyBIa305+9+
	 56bBNJLhVPwn59ZaqvslMrcl/46jpSGfrMkwEXFPhyXsLJkqvEMkadU9i/6VTz5FDs
	 9uXOybO/wkgpoRCPC0plO94QPXwxbdxuoUPSnPLb6u2EYdXI7LVwT6leYO1gP5jJHC
	 k89WLY4bgx1ji4T4vOim8lA5SVRz0shskQY4drh6DxIVMTJ5V7KIcLJ/4YA1IwZLF+
	 bGRVgPWqqhttc4VTm2WbZ/wYb+htugvC+CnXkKMqv5F6+CCJ9QqS/zStvcKpkzFbIg
	 Ks0vl541waxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32D3EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851436870.13909.8589178016858909240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1297920bfdc6fa215d2f7300fbf87c9453aa759991d14dd8656dafb36d8e2c
Date: Tue, 04 Jul 2023 23:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688514368
