Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B42579F5
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748170794; cv=none; b=NCeZgxqC872QYPTzc8slHQQd+qD0YyCOkbliHEpBj5rf1gdtOdUuGVMYzCkf0YCdaG0bknssJqFG/fl82j7H9QtDldt3jvTclJ9lbS9qa3OqAD3lo0TGWqEool+yYMN8qSEVkNVTCfB81gigEMAwq63aUWwVmFl/FWovegZ/Qec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748170794; c=relaxed/simple;
	bh=3N1tG76eps67acZ/0fH6IHUSDHESOcNOeV48giYwqXU=;
	h=To:Subject:From:Message-Id:Date; b=KleihXVmR3gXVnXJxNc5KUbsfHDK2+xL8U6xVOQNKGnU3BUuuTDpbJ5vM1F+2I1n5aWK1i4ctH4HvtZLHfbpshX0o7HQTc9iCk6HA1ZubKVrNUQldYg55fSNvWiKYAHnxbyWmdVDhU3vZAmgTaB44RpfZBzwfT4JtiQtgVQgFYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu0FnM7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu0FnM7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC1C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748170793;
	bh=3N1tG76eps67acZ/0fH6IHUSDHESOcNOeV48giYwqXU=;
	h=To:Subject:From:Date:From;
	b=Pu0FnM7PmjQx0e3vBDJdxnN3uhTwedfbItHQQAuuITZxohVfpqBpSMTnZ/Bu+RZDy
	 CavocAK9pB/lTPC3CHX4+poLraxNDcPVma5GAU694Yx5HQVGK9vdOEgoeMN1+4EURD
	 0chCWg3y4gnbNEFKu9DVc7o1/3msTvBQB3B3qbFw88vdH4nVQS6TyOw+CHRUKUuyJe
	 Z0nWzesXvSHjHMVUaM5dlO4fVW8p5Gfn3SVpDwrxGrb3e+3Cmbr+sWByaxvsIzspQ2
	 X/LVIQcyx+II/7GUp0EfRYFVZZxrXGa2tc6otS6wgbzBL75qYSjfQBc45rlRpkV6Hm
	 uAud7naG7gRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0EC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817079357.1431.7556212486112679510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a229f0e86bfd9d9e3088f136cbfaa520b74c044b0633ecd8f676642daeb1adb1
Date: Sun, 25 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748170793
