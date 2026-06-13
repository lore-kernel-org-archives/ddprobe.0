Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCA3FC0A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781365594; cv=none; b=mRoSTqQMKBxjOjLcUioAnvIveC2WnjBXkuv8DCffYGXd76trcs2CKs5wrOlf/x7pZblhTU2L2f7D3ESNPZjIHqI0uf2vSZAe/8TdJbA/EYznmfavlzyR65wjLp5fM8EIsDCs8HINWyN0u/H31uv3B0WR99tczd1VUVFxLtDQg0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781365594; c=relaxed/simple;
	bh=HYMdQRG2YGp5Tqrym96R00W8LGpCBKmha8hxewxrE8o=;
	h=To:Subject:From:Message-Id:Date; b=P3PkZ9uYNjysfyf/sEangZsIjL0iCsK68+GbaUXidfN1HQjr+Szh+cYh21D8mYruFBMcQUq5ZXm6FJykknHCpS2esIprrI+yhkQSKJCRDThoTW8PYDvMZ1Bk8PKv9W5NoacM5dEm5JgYscBtzEce5n/2ifX6aE1n7b12v2qZnTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa6lE+Hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa6lE+Hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD249C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781365593;
	bh=HYMdQRG2YGp5Tqrym96R00W8LGpCBKmha8hxewxrE8o=;
	h=To:Subject:From:Date:From;
	b=Fa6lE+Hg6LX73eA96Qlpn0S/ZuSJx1zxZ9+9vGPS8az3d/a6uh+gDkw+Bqr7Tx9nG
	 qC5bykewtl/l6ZJiWWRYEyf7XLHezfbdBgEkGursqh/ZWzwVv9ap6MnuwtMSsmOv2x
	 xNmKJvdM1wLmwsaWlTlKNaVlsCXTm08ycg+hpsd9kpmgjP1T2NM7+NHchf8og4rujT
	 Yj46G53y+fxU3xPpHcm33MzFLwXt+yddP+PVCm2lVMHjno35TrscDvvh2JGulm6/ow
	 8WOQ6s093cE2yQ0oZjuDGcgoUpMqPmOp2FCEfJvQCm4MFHsftCmjH4yP+REwfHMVPT
	 tmyBSVwRIGnsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE925CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136559368.14656.4531263245967614629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa562447850d8dbd004e89749f4db116501f7e3be62f04155857ec614baef5df
Date: Sat, 13 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781365593
