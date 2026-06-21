Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B3C3594A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782018394; cv=none; b=Y2ezXjOJFUFArra0Zlskxl5Jt0HLwNIfGMMXmsnBnmnaVdilQD/VrHm7d9u68vophneK6GQc9VA5Zm5gQRz0WGhROoByuDed3G4Ro6e9x6SnlWKIc8o/jMD4iJ8+uCgN5M79r9TGSWNT7wAOsJcmGCNdxXMbe8KDQpzmdlBM9+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782018394; c=relaxed/simple;
	bh=ULzjgV0K1pnrQmgv0zTnxT8q7E8nOfIzEa7mW0LdOIs=;
	h=To:Subject:From:Message-Id:Date; b=K3g+FwP1+OIKYDKYGXvS+tZF635sbxkADo5ZFKAfL3QEcCLeg7XtwzZYXR+tgHZVwCMpDS4AuPuwwLp0wnNpHZKZxtG3XRCJRfuArBi/58U5nYuRO42ntMBM6h/6PbeISC3jNMgGpkk0rKkfIKioJ47FBsq6lZdLwZkG+UtWejs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMKwkAIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMKwkAIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18B6C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782018393;
	bh=ULzjgV0K1pnrQmgv0zTnxT8q7E8nOfIzEa7mW0LdOIs=;
	h=To:Subject:From:Date:From;
	b=iMKwkAIZL3265Fcr/Ws8+jHjQFFL+Do4rmAlksnBOxcJMBQG8b/q0kTVfC5WiYxjx
	 pt/tHF8Db9q7Ercw/3iCbtSVZJnUMAuONQgE9rngIF/lK2yFsp1169NjdesPBrqYRP
	 mJP6XmgnNHUWXiT9jTQYjqzhQfgS3UwZ6ghvva2CbYD6UlV3jXK6+eUMybwsw+x4WX
	 8oicAfiFZBLEEwlGaQIxUavb+3pQcO1FL1NbS8Hauu2UwS5ZrfNKGFUVn0mGuHb62s
	 Mw5Xenl6HAzTk9k1naFKuZ84qE6hn7taNpHI0EewtQDA1z20VXHLqqPYJQezUIawHH
	 Bo20XdPQT5dLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0155CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201839369.24885.5571750628293063484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f1b8335f31bb45e541b55981ecc278c8a466fa27a839c8538bacfd4a876c0d
Date: Sun, 21 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782018393
