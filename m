Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AFFED3
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E651C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663642253;
	bh=1TsbyXTxcBQ5U203u2LcQ4oqx62qMb+fCCHrwKoYl/g=;
	h=To:Subject:From:Date:From;
	b=O2pY1CCaVdq7Zq4Q2pNZJb9CRI8voe9AN1HFEh7OqNDd9rJ9vkGUnijvOhPevIouP
	 UBSgr7y3/poTyEmgEH480N5nowmDCUBt2kw97pq2EJ1aoRfTgcGEClNAusTTfuW2+j
	 gkWCegudKZqHQcAa65oK6JNZrZsoSXdbVZodELvFkZNVoCGcLtUp2MrMDedLiL3bup
	 K5tuzVYWWCLMC4953GDxdfqcvC/4hjU6LbbxqFF07+6JWXiMwBvMlhXr/+4MJtADKu
	 TjSkod66pSaK4tnUTuKUOnLLT+sywp9ZBvXd5Gcns00lHUAMCIHOsqeohPanwfaQtN
	 XEh8Di43EoqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C1CC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364225333.29905.4208057948404135405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717d91531b643a8f911191462a45342b27c987aafc7fec96065c2cf16c226af3
Date: Tue, 20 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663642253
