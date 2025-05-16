Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D441FE46D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747377594; cv=none; b=sdZeX0kT5CbJKacwqrJzUdQdZ5b1UxeCu/N7iNeW+mqdAZro3cqbH/BRfYOGXXY5mzm1s0FBJgCDwFPrcqm7hThJj6UDJYc3Oi3EEiVKoYnDjbf1j05do9bEI9AfaBilR8q6+qyw44Zsqsjdm5LnNgW0Z81Z4N5/SqKCGlE/+Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747377594; c=relaxed/simple;
	bh=f2k4aJbuacnLfmIUKhlr6wuDQCW1CYnO8lJUTY7HLbc=;
	h=To:Subject:From:Message-Id:Date; b=b3YPAdQozb1C4fecfdD4SwA7QVmM2Ex7E+rNRt1pZLU9UiKtTNBHIJzvo3Az6mEuJjRQToKcm0kJ6VozQLRwPWb0KxwdJ2lzYw63runwgEKYYOEvvPrxL9eubIVGecuVuWU8lG1eXZqdzouGRmp/pzNtMdsJogr9g9yV+l00XI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/u1z3Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/u1z3Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747377593;
	bh=f2k4aJbuacnLfmIUKhlr6wuDQCW1CYnO8lJUTY7HLbc=;
	h=To:Subject:From:Date:From;
	b=M/u1z3Q/Xh69dvU+JwJRQ2AgIJVhJjALdyJXlcYUlx2Tlfow64A48KkB1llfYwP4j
	 mgCMxNaQnuADjTp8EV3omSHmPOoxffJd9zoWObZRs3FsCPrp8cr9W6dYDOvMeiAeiv
	 x1tL5fEfj7UN5OdD2c4KjgCvwYFHsChjVAfhF9sp4HpmMd5iGgox8WQz55EypExb+Q
	 B02lT7zuKOQm/xFDIvOTgFf4RepwKVNZVJJPE00/JKw4E+Pc6fDKI6jWdfdgFnjBFY
	 Bcpl9ok/XtuPdlXxeMU441asJAr3HAXmfnzGm8zr1OwfJpQx9bbh/eHuQc8vJEq9zJ
	 s9jwkpdSvbQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB79C3ABDD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737759357.17454.10976238721571562181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12c42e7c6a97ee83898e51e52120143f0af3114bafb1771f6a17ae7cb554939
Date: Fri, 16 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747377593
