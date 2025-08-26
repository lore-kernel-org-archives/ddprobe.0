Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18301A2389
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756176593; cv=none; b=L9EpnohMUqLsa7lIGWZkt+yOe7XrYqbHs1z4RpIDrp5ZoYqDQhtWjC6O2ZUhQwSjxf8uJj+s+8vk4cJGhaDev+IgcPzStoCZ0SOWuYRtwFEJ+f/ne3sDm9ZXgMMQo740GSNH0a2NXn/L+5XbE28Mwd/l3EJ4BjwhGJKdqZkidjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756176593; c=relaxed/simple;
	bh=qKVLM81awLgr/i1DVOm4k1HiE5HJDzO7ie8S+ROehl8=;
	h=To:Subject:From:Message-Id:Date; b=rF5F4dzU38DCGFSnQRF1n2B/cddFv9X+3llp29mTcYTqSBMIKqoOPL5+c5LmDFpYF1Wlwn/OPjYbMmMD3mPcHax3Fdg9kd7l/wDK7Wg1WP6ZbcjUeZ0N0Z/6+zKP+N7cYQn0BcaGvpmDy7+YdI4yH1uYlQ6YUBMYouf9czIb0oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edwRFlNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edwRFlNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA2C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756176593;
	bh=qKVLM81awLgr/i1DVOm4k1HiE5HJDzO7ie8S+ROehl8=;
	h=To:Subject:From:Date:From;
	b=edwRFlNzX16f0zXdgdCVypsECanhQFicZ16tzMKstPci3uAz67AvFoC3RHtDazpB9
	 8PU11pqteLPTJQrAo7+8VL7vn7mh3sLn7f4olVerF+NQ8hi7iDKKYtssrhdSMzoXNB
	 T45FqW4qsVuJk3uYXWTW14rsh/zoEyWUFS8DWjmUBsiYE098YBF0vC+IbQ+sTk9FVe
	 GUW4Op/UhdyzOik2ajzEwYXYrVf15Tom9/EvNcGX2BHfe/JG9mBbv3FUfbDg9jBWmv
	 pT7DU+ddI7FyOcgRHFCZCS+FiEOKFGXOeda2fCj0SG66iZAN6YoqFjfLPVhdqeSNi7
	 iOppybtT9e3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F89CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617659357.8505.6418244221925447119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a300216cf141bc1bba317212aab794cfaa734e5ac0da52ebc469891e790656
Date: Tue, 26 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756176593
