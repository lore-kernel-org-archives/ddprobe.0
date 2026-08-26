Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427821990C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787735434; cv=none; b=Luewa5VUdt4za/6/j9VFvl075LlE4OiYAQV5SlYo5IYd3lQ34OO/5mlmBipgFpRPdl/u9+7c4HNRvJabc2hPTo3GeiP/yPBW6arDPplILL1qVYrAIhwmJqgQYUrzMFS15uR2bSbBbHc4ii5jva4CRpc1PGeaCTQ/RC8m3dc4Lmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787735434; c=relaxed/simple;
	bh=ZErp0aPZiffjnDx+cHE4QbKrZ3rjZlOZ7gRwq6hC6ls=;
	h=To:Subject:From:Message-Id:Date; b=b95/888OuiJNmxRuoFkUYJeJApHl3IKNz43SHkb7BN0Mp8ib1Czi5serXQz+5/9KimIUXFCxgakDdN71b6HxCSbTPBBzq4SXZzT6BzB6uw9jS7qhknRaQX4iQuVygoUKbZgB3t5R56731ZZGGlfNr0piUwwCJHcidHLU0eaF7Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8BGsYHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8BGsYHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB43C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787735433;
	bh=ZErp0aPZiffjnDx+cHE4QbKrZ3rjZlOZ7gRwq6hC6ls=;
	h=To:Subject:From:Date:From;
	b=o8BGsYHUnUrm5fbQnXIuSnsAOauQ9ewlvMi5n4IwMSYToh7fXwLZ1i3CBGZoUCFgJ
	 Yw10uBSMx6wPpRWtHu20CdWtaP3Zbtj9g5QA0vsDvAkqOX87jx+1Z3xByszBfS1XP+
	 k4bKaiKtULem+Tk/+13PxNrnbq8qKcbW/5p8rkCt2RiMDKzZZOiJ/XbOWgqcJ1tIln
	 G3pcjOs+dIrINgFVOqwsmFKKirt71f7vwkNsPu4xID7T6Ub1CsTDk/+ksO/zdrkI3D
	 uEnSMSJm2RtsICELRSBMGmpFBDfRCSFOEvhfFKYkvMRU+8SZ0t+RmfnaLLmzDGWjiZ
	 qbf9tRbSmwsiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC30C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773543369.13587.4300166138013931655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91199dd0b80206d856690fd38687774fde64d330f103b3f3eb0e5596ead8e696
Date: Wed, 26 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787735433
