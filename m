Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763203D63
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B95C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691340788;
	bh=I0udCSOhFgHt/ai06QzJmi0XV0vIkg2ruo7ZlLIxGUA=;
	h=To:Subject:From:Date:From;
	b=kSqiPDi5m8aXxDcnRSY4cabphJGpcOT+klo5DqSQj8kQWg6EWPm28N5OEOGBZESnT
	 TJjfJZRf0zNQErw7UVjSP4Pas/38r04CTW8edL4q7q1JcJWIwPRbaJYdkLRr2ariPU
	 b083vNEk16jnoMPF3alk4MIu77rXrywCVAM30Hnblsv3mqo5I4SlsuSOO3J13t7aKm
	 OgySA3MzST/teddgjINcDEAhLaq2dQlprx63klKm1kWAudTlQF7d1IOw0QOt5gRNme
	 niJKO1+0SpMOz10y/FKAM3VnEcHOzgUQvOAfAo45qS2ljva16b4zPJls/yNk8apoXK
	 Zk4z5Vtc6T1Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0CC001B0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169134078867.630.9338779328821790217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1251e3032aadd53e9333805db11eaeb1248b9a24fdc690f958a9f11dc2ca90f4
Date: Sun, 06 Aug 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691340788
