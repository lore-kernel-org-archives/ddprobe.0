Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB737B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87869C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671840087;
	bh=kcQgEX+vFnh/wK0bS8fum+g/ICCkl79+bhl3YuMhyhc=;
	h=To:Subject:From:Date:From;
	b=uFVNJMm8UJn7QC6LotHDqxVvN8cwjGqax2FRdQhQBfuIOzQUrkT2gmhGkozSf9NWA
	 MabDsg/CoNyqHjFuvj7zfDdmw9cetls+qaXn1yRR+Paz7RJ2LCVb5zDMvrwmsThzgQ
	 VjyebF9h55hB4c8U9aFDbgAlIDVJYUxRW+sHB7o4SqLzwj2SnlV5hhy6JLKFAQxaVK
	 dRYMzARFUUsugjDPQLYjF/x5UaxO9AtiYIWSTOSleFcaOCTtejToJrX+VD1DP5zNF9
	 yf7v+7PW4Htsu6hcfFPeSAvr//SpXmzv3vS+DVUqGCbB0bAfSfFLrLE4NgeMSzzuQe
	 nWMIOuWVoavwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6756AC3DA79
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184008741.6582.6569797632823982319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e33a452614f4bcd0be2a0a3d2cc05abc96ef86c180a0c5f367c5e2a25f3656
Date: Sat, 24 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671840087
