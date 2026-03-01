Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BF624634F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772384694; cv=none; b=pEoFoQZ2yFIhBTfQcWx9PXAbLSZ2qXlKDP6bSSaUkMTFPzUuMZ8ozTSZQ5wqa3gQLnqALfULk43a9I9wXn5xg/74ud4vPs3bFYghXI2x2FkBiGnaHlQkjj0JvT91dsk1FVuUq7NVcgA9tcbwZyfKVN1JbRR4w7V/ndewxFqBky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772384694; c=relaxed/simple;
	bh=N09u1jkrB9TPyorJ+ZEHW5f5bvY6COObC/MMPdkAOKY=;
	h=To:Subject:From:Message-Id:Date; b=ddvA8dn7Toy8w5H2QqyDLL3U9eHUipM00BJGXX37Mu/oMi21V0QSKaNJ3ozndV9YJcgZiAx3mR01pl2hAByJlPFpBdm78V4RQUXaJdJcxWyqpxA40/qAsm+ZO0Dp9Y9atWegaK5pAtJp6SAx9Eql7laP8T+92TXyZMZpFl5W43U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1vd28ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1vd28ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2467C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772384693;
	bh=N09u1jkrB9TPyorJ+ZEHW5f5bvY6COObC/MMPdkAOKY=;
	h=To:Subject:From:Date:From;
	b=t1vd28iiSDXLRUa5W6j2xkuC3gnMxm47QZWt1CdFU22p6Wy43r9yUNeRHUDTZvCWL
	 EZtQUYF2XIlWVyeu1S2x06a1GOFL3Kr+5ySHG2M5Loe16AcS61QxN4Q4gZdkeqIJ+c
	 FZOpW0ipLANVl5RIay7z131uGCMNgJ4JGgDe44a/7sJTOZiu4vo2TrS3Nob6ElqOuT
	 fzjeKYtxY8eb+1byzrKTxoGxIH89w3MpkLWD4PvQgT4WLKXJ6TQXaAWyzxAUAgKjtE
	 ca0yJbVl9C9lT1Lu27heq3So+7tX/1Tc/neau0Vk5Tgg/mhw6fj84x0EM/gqp5d/KC
	 ZzkWLEKn9k/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A33FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238469358.12367.300983911397122734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc1026a10219c709671b99452ea25dcf9a2c24d1249c680b6e6af2457b4b313
Date: Sun, 01 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772384693
