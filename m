Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2D463C1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78551C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673704887;
	bh=7Uvpm7MDs4gUm1m2xvHj6cIzwFt8uO0FQU+kGTsnPXo=;
	h=To:Subject:From:Date:From;
	b=GHdLBd1wUYj6EamFpLoQvB5Dej3en16ZSdFioLs0wyu4lbjK8MBkime07PZIKvJg1
	 MyED1l0uxXnxX4/N1Kii4n1zLT77GiZf6kHtmNgd8CHDCUI6UodSrfTS2ZcsaXAE4T
	 TxjH61JRzVHp2D0fGtFMd2cJz+kXvAgYYsqOiwJWqltSvo8lxeN+sd7V/omp+10Axf
	 DLiRVF8xCcU2SvHfuBZnoG2dvZZnxed9zeg5uYFdZvJVDnsTAvRc1EcEdaNE3kaWxe
	 y/m7H7Tk9KzIu00V63OXVaqAiaeitBqzjixAuzKWUKejVbFIbdrRZTJIOwFXYVEmUE
	 LufBW027Yr1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F60AC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370488738.3461.4828729248507121062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204eac729a7f451a9e105f0147752a61afb0bb951b404d18b187ba40829e8b4b
Date: Sat, 14 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673704887
