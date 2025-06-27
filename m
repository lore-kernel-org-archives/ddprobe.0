Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB831F4727
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751061594; cv=none; b=E6tUpgTkiP2j3IQuGPGLfVmLFyvaRMP7o3mrJbEBn1OE+e44aVzWUsu9uOt1IL9p3AEILz3CZoiTVx8VVYm0LLG/UVoLYVAp8aCe9Yg1vBKYgVX1/LENsOtCjnBXTrAPJVoyZIJNUQeuwz05pUniPZivPYRMjXBh8uBm9CiamIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751061594; c=relaxed/simple;
	bh=nBFRdkXorTV6xFxeakTOEwKrAd5K9TUuDR4F/qxAVS4=;
	h=To:Subject:From:Message-Id:Date; b=ZIJ8YkJIZ8zxT02S3Ig/qIFYjRTMu6Xtv7I2K3QZUD+AcJQqq3JJs7o7kgfy9L70Hh407mfUwx1506284hIEV+Gup6vieeNXSqb2NFotvaFrHBKZtxAo+um0oDAG5YlGzHnifFIdA6xZxL7ieoCW1y/U68o8fC8F1JVeEZycZ3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C38AQ3N6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C38AQ3N6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0695C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751061593;
	bh=nBFRdkXorTV6xFxeakTOEwKrAd5K9TUuDR4F/qxAVS4=;
	h=To:Subject:From:Date:From;
	b=C38AQ3N68nggmQxkNuDlyqbDJYBIiGFcPi/IO++ed2l1JzMInDB72uJtewdVlm6VK
	 bQum/nJc5KjeTGxvkPj+Z8KqeN8Yc5n9JbJRezPjwAYwsfu7Ef4JnwTARScqG4idAS
	 jzzJs55z8j2ajIZUgMKMYzV6WRz920BIAvbOWpXiFVuaKUgFSr3y1Shtcu5SRkTmoB
	 tTn1LnX2reGg/pbj/ouFSQw5zaAvdcHyiCOMJb56XDq41QeVlnUxQ8yc2vuRlJ0mZe
	 HWtk01YJDKd3lebjxjjFCruLYGynnnIT5h4XqoN0io4du29d8Ucag6XswiESXYcp9A
	 BSfOUGRVSmiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE94C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106159358.16979.5779743630735576768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eee6fb84919715c563c5710df698a1b4d7a6c1a728a1713f8da89fcea84577
Date: Fri, 27 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751061593
