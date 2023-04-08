Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE70C2D3
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 05:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD68DC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680931265;
	bh=Pk5aAPDzwl67McJX7nvcacDJBtqObR/XjLBxoRaTEYU=;
	h=To:Subject:From:Date:From;
	b=flv6b5oqwcKB/wQinZcuMUy6i1vHVTUcV8NyO/WvlJ0YVcIx2s1MhjRMsLXzqBbJt
	 rxGwkUNBgqd84wjw2dfrUid8DyoTRHqr4UVZZuj+Sel5D+N5pvdPh/f6tYRYCeKeaT
	 Nyg1Fc1xCy+fekam3UtSNOMXhxFaMZJyyaGwQaqXAMDQjSCvIXV2lZznNUKdl8vNBZ
	 0ysMnRgvmP2RoMuJ7D2C5xgXXKl5ROAtWaQnEFWXPaiUMEWMJ2m5F0jFqWWpzaafIH
	 ATP1l06sn3EVqdl5cocmegMCQCDh0RhUk9Db1ARFJrWIuep5dMnWumijBD1Poa1OTa
	 +sxcEIaQ1KsMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13D2C77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 05:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093126574.459.16545057987546986863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783a5ef08f5151ff9608a9274197cf1e662a0f4f6f4e46d2b755b9bb0a1f84b5
Date: Sat, 08 Apr 2023 05:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680931265
