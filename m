Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0D61EB3D
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732068954; cv=none; b=axlnJqhVvpH5vxPnTp0GqY0ybvzwI2zo9KVfaEKH5l+mcbhBPZj0qtefl8E0//HCNcpBdcHVKYRcNeEZhyG2B2z2hm+RKt6Fbpo9yN0kv8EaMzyzn+GFiPGJPOYgqpomSbAeJEd9TduRxkXOVFDwUgAi8nbTfbQ4tux32cogNxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732068954; c=relaxed/simple;
	bh=i5u6CN3EdJHOjySUZCCHdvZE8UHhMxIkVEAffenczuo=;
	h=To:Subject:From:Message-Id:Date; b=HkukFsUy/Dyf1IwdtZtVZj4LIray5LqxD6f/OSIpCRQk0YEvLvYTPNGF9Tdd7Dz3uK/z0whhxJGviFbrsnaW+7IQvGoOECjZzfgJNiB3pjdyYZmP0YTCe8YKlI358CHMjomlkbQlzBxw3noRSI4Joa5zsLmblq6kEhR7vPK7YuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ96+ZoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ96+ZoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE6C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732068953;
	bh=i5u6CN3EdJHOjySUZCCHdvZE8UHhMxIkVEAffenczuo=;
	h=To:Subject:From:Date:From;
	b=ZQ96+ZoHefpvjlAMszXQjpYI+J9SX4UiCImc7nxZfDRTQJSfOwwA4RGep+THW3Uuf
	 gAzYvLHh41ZMOI24oyIVGLbC4xb7O7VZH32a1nU75d5VSfwzqv2mUIiHmAbwu8lOUh
	 dSt5z2dG+BFkZNGJG1pHth7qnYg2ELv/J17g27jX0OOecWdM4ak5snF7GVjyvuKlRJ
	 pCW4NUELsMiCvRsCC6xM7mfRwWGY8did2cDJDxVu5iKCO5ay1gnEBABv2KtQwWzqU5
	 nJHDJLVLOaOLKZl+oQ6DxLFefDURpvBmxg6x7HQOiOfo0mBrfawopH7/dW54cL082L
	 hIAJ6eqx8kJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA5D4417B
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206895359.941.13580817968009764185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c797ba221307a9e526cab823a3123c8b630254e5979910f41bcb6ab5b45877c3
Date: Wed, 20 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732068953
