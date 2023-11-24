Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1423D38DD5
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj6sadDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86757C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700857096;
	bh=gyEqxGo1KHemv/WibWFn3LulNFqAtP2etad87UKObG8=;
	h=To:Subject:From:Date:From;
	b=tj6sadDqcZ/TwAQQyHikgwtvVMP2Dej/40D8jQasG5ZZ2idRTGgp4BxRCPdNkcrRB
	 CwbIjbmbH6e7PDMXJUF86iacj6cFSc3ioghWsB3cG10EjBkskVz8Fp6BR0tuwpNVIk
	 /74JbghcjiOBLolfxZc0cySdo1t18pGPbloPvCnx6eQBrsBsTHIjK9Cx2z86B234Bu
	 AM/FWC4oye6I/yjd37zhDOT3uaaDBKPlDCTz3uTGlMEfW2oUxCbDJkPoHG54lS9u87
	 S6HDvocbRadIKZUTJu7ypdun+Wy6I+xQgwrC70VRqwaFlgIiiOo+ULkz3R9zi4XCX1
	 W5luxacoE4o7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A99C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170085709639.22129.15289981609130807497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49174456498bc7d298c82686c7afd493d85352c3d71da66a6a177cb9046a87c
Date: Fri, 24 Nov 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700857096
