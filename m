Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0B225B091
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779590554; cv=none; b=Vwd2tgNQ3CLAW+bIeUnDGqBLXwcQ1pGgWnx3p0LWqRwqpga3K70gZv7ninLCXyhrdf4oetd/2jQYB2cMw7XCVFXXB8gR2dwhxJIxBMQpDhLJ6RaQXzQEf4PhqNY99uaZgZymJS0kG6c6xcNVCiVywoCMcX2hwmPX58WL3nIdSBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779590554; c=relaxed/simple;
	bh=9dGIKf/t+IR5yvc3bz2Hv9oQNqvnP7Uh+I2TAzB1E3I=;
	h=To:Subject:From:Message-Id:Date; b=YFG+nttrjWme8wvVIWj+6ovSjFTsnaD1Eb43uYiPsx+cVEiETtapYmaN88jMba5M6MDPCgp9qMlMummNdiaONzRpf0+QDWXkD9azjqOVEaHwhOe+Y92Rlx6jl6fiyYsI69j6LMhhW/KQeAomKyydaQi8B0wd/Z+5pxWkmxJWmUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn33DCtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn33DCtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EC8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779590553;
	bh=9dGIKf/t+IR5yvc3bz2Hv9oQNqvnP7Uh+I2TAzB1E3I=;
	h=To:Subject:From:Date:From;
	b=rn33DCtUzAGvVNz7hr91Rfzx9K3FQrFVjy65ozFuMXkH9BvwMeFhtEYxw4A3qF2nl
	 kYrU0sZa/vUeMU4q/NKUFXBrC9/nDOu7Kczv1gIYpoTcRcvWZJMFlCEzgWFVILe4LI
	 U3MrAajmkQ4/hde22WywQgFmeNUkJ+xNAd9QHY/TdXBuMrs7+Sr0pX8jjJElbLKJtB
	 kxo5Gxsm86wawTKKhwrscjU5i0hxVPhw1u8qAXEJC6oMgjtxbPukyrxPkbyNKbwJhZ
	 xYazdNm5C8nFpCB/OvydIxjw7fRcbyKpg1CBhm8Ms0EVUS2G9nGRJ/921cRZ60SYO2
	 /Ru0OT5EBd1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB95FCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959055368.5457.3978346335760349287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728beb1bcdcda380acf156c564483395557decb0cec36a12bd672ff7760bc5e5
Date: Sun, 24 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779590553
