Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8DB20FD
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0516EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674232926;
	bh=UN+jYO+s0jze8I2mP3PfsHPO8eDI6SroRv6AspbZWAE=;
	h=To:Subject:From:Date:From;
	b=Spnjg/zy7sCcxllXUzRivawEgdDhiwtpPJgpmCFJngVesq0APTh4/jQf/Eg6/8VSF
	 jrEEx9tunjQ/0jCSONMbleN5ApM79wlrdYacOVSDNRLK+ocMjKsJn5nv4pTdLKgLbm
	 OQcrsEFhKMoqydtV31WZNj5QUb+NbDBNWHWXdpPffZGCrpz3w+N4D8d82yAsJk2DTh
	 ediGsMrzwPevHF4FVnfgWR2KqeFDjbGaU/fJ3fquXtg36hU31RYaVFe0sLaFTs3wQJ
	 nrfuRiDkNLd9Ki5d0S07Ud9r7Z7NehClQBp8MrxrOxjR2qt8/gODWQcJiOO2WPaOZ1
	 Qi5Tfi1MdV31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E3CC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423292584.21577.3923369537724852280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c321308d4ab92ea24573bbd9dbcd9cf98f0a2b257d60755037949e758a9ec745
Date: Fri, 20 Jan 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674232925
