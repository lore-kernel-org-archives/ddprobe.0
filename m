Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2765C81AA8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778419834; cv=none; b=J667oJUpHJ/9eV9cZmNhiZM6g3LaHcFBVEt8TM45++r3eG9EiGze2BVNtkNHpRhSfa0JnDWG2i9OsHdz4JciI/0vzGAFvZSJEWmOMbohafM280+KyopFKGdUUoiWLJ+1zUoZRcLSYqlFszB3zAKjJFutUKLavHbkJrriuo7t8ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778419834; c=relaxed/simple;
	bh=8YPPugHnpjp+YYqLtNg/fRSLsvJTFVx0MHdBkEtDKTA=;
	h=To:Subject:From:Message-Id:Date; b=NID4HUrvhjKAVFxIe02J9mj0E/rWgYPJQ/ZnqFnBYEBcDDtGZvZS7sXfxnoyWKo8W0f9iOjYdmmj8cFtgzz1QIjKTdtUWYA6U/rJGl6k+1fjI7+6KimNFeO69STPtRzx8IsQLREn7k1Cv1Kx4rwf+5CLvl4tCM3AQlBE/gOhlsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U229htEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U229htEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C523DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778419833;
	bh=8YPPugHnpjp+YYqLtNg/fRSLsvJTFVx0MHdBkEtDKTA=;
	h=To:Subject:From:Date:From;
	b=U229htEH3M6doJq9BjfUze6FoXNgG70X7uhh5nKMqGNFEz5RzAK+BDiDvdFgLqGhy
	 WiSCi6RviUMilxtvspfHQrB6rr2jegLETdcuuP2FqSx+4r7XeJJHh6KzZChDEoLJbJ
	 h+sbc0fo1nIl/cHT4c7vFpmowSOEwfpml/D3flUsZiSnxjZ2jAgDl4tWa2/nR5rFCg
	 oNV/CwWieIk4LvRyC+FGyJURV2qw7W2LCtwPzoY7jImtHDHSnYjAVPlEUN+ywtJWrZ
	 6seD3x1QatDKm1xp/kDg22L2sxU3bFFaM9Mbw2OCe6dRxOIFKjxt8gNU1E7F7mquTc
	 0E5zF0Iw9y7qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD2CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841983369.3072.1655861784522083016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378deeb9abb09a4618b200d372b1ac46e74a28a00ff0dce4a3d38931e9a86d3b
Date: Sun, 10 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778419833
