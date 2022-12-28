Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D516F1842
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BCBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672236687;
	bh=TR/5AoOIFwU5PcPP37+IArQFtURUZLUkH/VuqErrxms=;
	h=To:Subject:From:Date:From;
	b=UexCN8l8ARXqyZrioixVvIH/nRuHuG9Tfg8k97plw2Wquhw68ZAsiIwUixMepKtoI
	 5GKhOhZuFzmXkcDXs5/WPkIokKMvftteDvwmWJLJaL8CgLczaV176I12M3EpdUvlnm
	 xGeNlztuvQQESm8CrvvJlGEFwkpKg0ejtAtESIvQVqBLsNvmitRTTm8dFPrI2EgrdM
	 qWBnvPc9s7/Cdr7zlJwFYendPkkXw4rEonktt/dpgxWbI3b3/aRSB1wounEivwNKwQ
	 W1jkW9pFoMMnBogW2PFm6/N9LS/MEYeO1cPTHsZI57nSaBAWmy2cztzXaPpl/9j8Kk
	 Zluwdeed3AHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B78CC4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223668742.7129.5284031828598209641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20dd2405ee0e18d0f4a7d5cc714f1d4dff95639f6a3ff7bbfd8d4530feaf7f94
Date: Wed, 28 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672236687
