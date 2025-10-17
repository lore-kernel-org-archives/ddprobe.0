Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5642F12B0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720394; cv=none; b=WrHeie/1aDahR/eKFCuTT1Io0xmncC0EFAIiHx7Sn3Cz3o3c+qtPPycOlOKBR13HPHR1lHg69IR4BUHqkpw9j7uf+AP9ShNVd0bNIO9jrc8mPEMRSSWqaRciXQVGrtB9ZCfNbSdq+G2Hl2vHji+i3yrcDBl3Hogi8KNUVZSrb+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720394; c=relaxed/simple;
	bh=iRqo15Bmyoye+8ZCIBDQ1IbBQjfUyBDEPhK8CHQLf8U=;
	h=To:Subject:From:Message-Id:Date; b=DTNP4p9yDmOvY4LHev3o98kf2mcJO0xzP9IE9jRXZHv7HdMvr4VernLh4mNcVBiVZ/sP5pbPRBI8kEfqS+Aq+s2QFoTcuUIow1dXZoYm1mBYRvg1COQ6h97q/5Lv5omT8QX3P+Y2NDExZLdf0Ih6OzZWIDZo/GRLc6pdynw9emM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmD0fev+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmD0fev+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5CCC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760720393;
	bh=iRqo15Bmyoye+8ZCIBDQ1IbBQjfUyBDEPhK8CHQLf8U=;
	h=To:Subject:From:Date:From;
	b=tmD0fev+C+TZWVcITpYXQ/NbHsY2lq0+IHc8sJn2YBMX3VxY3NRdzh98KlIx1BPJQ
	 l4Pha9pZ+ETTlLU1yqtXP4V+r+clrTkAaWs26kwm8hv+1er+McACysvTbx3rZHRCEh
	 +/OqzevVyZZgUkt3APc54nXZBAZ8C2ghWBqbGZ++cDXqmPuInIdHiCPUP2HeN3J3mz
	 0jptj4JjcWIWt48ovER6Z45XcfxjrtDKKgaa3VxA6o8kAKpx890OEauSqrU+YtyuwH
	 bHFaIfjtjT6cQGPEg3b8iIKqPDEE3B8cB5sZtR4dseECZVBkHa+K43sTI6fK3axmbV
	 tbLeS3vfF/khg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C2CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072039358.876.7084290521136692783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7907109c7751dd1938597967c443a5696080fcefb4f5dda2d0dbb011db0dadeb
Date: Fri, 17 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760720393
