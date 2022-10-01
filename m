Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02C72564
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2A3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664619653;
	bh=/MFpzBULn8mLGQ0SkY1xKPWDwaTAghCgp08f7ZaNgeg=;
	h=To:Subject:From:Date:From;
	b=p/onnRJ+auhG/QO7y0Cg4PHNsWYdx1o8fkhMk8/tNFN1SqZ4vx2MuReUtsh+EVdER
	 hRObkSRSTcUfjZzA+9wos0JrNZQU3QMQf64FyCuQxihDlpP8mjqwyfZ2HR/UpRDsga
	 dPTvcK03uJZ2wbcBrW3No3ymabuRmtEYj9gI5bp2BehdtWmko34gjZrHlhvmdvuXGd
	 TDTgO/AG/FQOOVlRBzCbDnqpv7FGM1RUUGotglePYOCs4gAx06bKVq8UgWqtEMi2Sc
	 6xjBd9dWXVDxvkj5fzPy5Can+CluLiG6dClRvPeXbnCwbuq1MC0CF4pnsQNpsjTyYh
	 SHWg5JnSnd4Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529A7C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461965333.14326.4094201360066022142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92728b5fcd520c5dffaf9861bf8df8832bb00657c169fed11d886fb399468d0a
Date: Sat, 01 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664619653
