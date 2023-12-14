Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1044A2AD04
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYxTiGAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771D5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702548496;
	bh=9EG3X5HIbmdHsOuObiRJE+etQT2OT49UH4LZGXj3lWg=;
	h=To:Subject:From:Date:From;
	b=ZYxTiGAXMTAg38/5tfy1B75r6Nd7LEvP5FjnXn0Y5jokG5s2sf/jUL3LBZ4EzdpZR
	 enWl7NYtGnrCUIQgdx3psN4FbqVjVcP6ucnBubqc2GIilZTxe/Eq7AEyJv3cFFTKzw
	 SmGAmM/mSNb4LHhn+Z4IE0UusxuzdXuwD111GMOQku+SQSvMDAddx0Fhh4SIpTxSg3
	 b31Pat17hbjr0h12c5AvHX2llQQXo8zpShE7OZ/m645WFLrtvjjtH49DylH0KAeorg
	 r/nGrQDNKAK7aTSllEfiiaKuoNiAWa+ZAcxzQPi92if6WQZcgW/EVBE8Q3R65WBHYZ
	 dmiTIoZiVj26w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D435C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170254849637.5378.1884290918841155512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89034f4b2fd36583b9b9ed3ba01f6a79947db6a525241110ab034d1a6d942361
Date: Thu, 14 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702548496
