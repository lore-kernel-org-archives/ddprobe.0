Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BB02586
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEABC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673013087;
	bh=xhIZf7AOXr+u3etFfZ1gYyCp73ESV8pNh4O2tbdRHRE=;
	h=To:Subject:From:Date:From;
	b=JaYbeoo5M0dVeDKGiTFlY6sBPE2jhyv4OGY2gliePLv8ZOKhH0aghi9lVFJzaPx4k
	 RIiV23cKwjnYRaL818vFUREglWduRE8G0H/fvSY3i10DWOqJO8LOw1EK2MuO428MkX
	 dL2RkEhrKdtgNhu8wdRHlNaVesQEPH2S85PK2rTUaB3URUia+JBU1Cak6PSLiJcqiG
	 fgD2ugSIUTD9YWw0Q0xBBIAYA6A5m/wYmOxCHyU57PardAWavGDum7g6ANQqmbKeGL
	 54oJcRHaQyF5+Mrozk/seyj4d8KbijyzL09tt7jp50O/xpwelu9Ij/Io4f0iO7S+6j
	 5urgnTeeWX2Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CDF5C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301308749.19186.18275219551078268213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484a5fc69ca5de6526792cd56fd14f2efdd5c3b5f183dcb3e27e48ed946dc794
Date: Fri, 06 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673013087
