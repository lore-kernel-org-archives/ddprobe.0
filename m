Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73A45668
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgG4jui0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E01CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703656096;
	bh=audrnL22LJsRzQ1CyYgLAnlRLGhheMqtgEpmq64o6u0=;
	h=To:Subject:From:Date:From;
	b=sgG4jui0Ht+swlc0Nl6Olo01Ps+rW/0VGr+dC44Z5hGZNusMR9hrg+31HknVoe7cC
	 ESwmxoJos2xlByqUj1MAcHyVOhoZ81zF9XBGKe83O8q2NhrLGCfC4XJXA+atgrBlxS
	 kJjfpPF9rSz+td9XdCv/mnkH0O4SJ8nN4KZCPyotkf0nwOLX0iZ9WTkqEdHEFNNiwv
	 Dnuewq7bn7qQmzHlqaxRB4ARqVjcRxFNidZHfKCwUlR3sVo9qWrzbIEKzsNUyofmt4
	 GY+p+HODBEhYSbqACHyCoNencf5kWDHySx29P0L8BHIMG76d1i4BEkYA8xrodrvRP5
	 c9Hw391Bib9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4D9C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170365609644.23051.1205249840847828444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18e999d2f66440a987685104182db5937b1813899b84164ede08b74fd584866
Date: Wed, 27 Dec 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703656096
