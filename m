Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3568E221FBD
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774116894; cv=none; b=jrVJ6wcPPeDFLofTzYwxhQTpCb/BvEZ5SWU7jVtgPHnDbljQROPmqroN7mj4kv9608kcer4MB8jferLOeQzGppOlgLUkdkPAtiGNEKcXL+nlr29tVPDVIdzVcl9jF0mI4jrsLTp31+nfVn3lDCx6EHfBMfUwBYsFbO1lNpVf94Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774116894; c=relaxed/simple;
	bh=eSsG+jXcXvA67dGeeUxVjg6wj73VQcPHyZvWNqLsWPU=;
	h=To:Subject:From:Message-Id:Date; b=B6Iz4rGQkNCcm5y0PjIcBEHOSGzBTRhohL5RpA9Xzssz7vVgpD+Iqju4yf1spVIHF7TMcYatbl0xnZ2yazcW8FR+Mp1reHZ6IiN8GSegsEnvAPjMJIwBXqgBkPadUbrgGrZrmFuhgu2//mV7K1ePzO0BcuXDOv/Sb1Kp9jTUD9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL8HsVzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL8HsVzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFFBC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774116893;
	bh=eSsG+jXcXvA67dGeeUxVjg6wj73VQcPHyZvWNqLsWPU=;
	h=To:Subject:From:Date:From;
	b=EL8HsVzWXkSFbGu5+nbl+yhKNi81iieRw+rRj0pL8Qnm0Cb+b4SQkyFt1fVznFwvU
	 C1yxHypNBKC/lJ7vIMoR4LR2LBAsfD6M4RE0cyyMOmwKeuPv807JLcnMwYR+gDiz/K
	 L1xMzfp4b/+t9uHXiu0eHzEccPuWVBC2ikakvZibZSKgh1XwDSRBLT2AD7fcFXXQGW
	 nd1bAcAsp3oZdeKAnYOMEpjnHuY872SHUmJ4C/iUZAtphUaVPPlM7TTDB4BodqBk+N
	 LWQnMcC3SPjGSjT3eA5fqpyXKrA6jQwdPFsA9Wl7OVPQ7sntozm5oP01FPSYbVbwYn
	 6ypBH//U/Qrbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A51094478
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411689357.24863.15405534071049338906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b094e4b09588f9cb02ba2332c859f0f6e7fc2ebdea83cc4b9fb5023451a1570
Date: Sat, 21 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774116893
