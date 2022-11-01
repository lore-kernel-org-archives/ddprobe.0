Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C693E7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6B6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667332254;
	bh=j3/qAc7E6Jk4pzV76Rr5bQfX/NL6dnmdswjad2hAFug=;
	h=To:Subject:From:Date:From;
	b=VG10WND2T079Q9mWonnMCp0aLHUfC08x1ZfdE1KrwZORJVRhp4ptS7vOuTvfeRHfa
	 1GP6vdKnbomK14Z4GWlpEP/ITNLGs1q+cUCvZlODHGM4tDEjAs1gnh1r2y7PlzoAIG
	 VdGkO8HlzRC19VMLs2iK9BLsmnA4S65kgP1CPNxNXW6EUXzVLTQpp1TKI3iJ93Q/LB
	 aeXhjUsgrCS60zg6BOEuy3+B2+vAzKgmac16tFUGB69bqabGCrYhvhak1Q3jDSgeOU
	 SFUTxAgGsL6dg2pcLt8HY2nJFB2CYvhYk2GEmZXtk1sZiaO6y6PXgGlBLn5l1SrEGT
	 bQVHV82YdP4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CDAC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166733225431.9998.4023650090899434720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d8634f2158cf01baa005be0743ec27651f41aa4864e15671d5935c224b4d97
Date: Tue, 01 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667332254
