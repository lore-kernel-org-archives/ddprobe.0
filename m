Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B8116DC15
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724266554; cv=none; b=du5MZYwisL7gcAzIjh1n77cU2FjiWwO3c7wGLQN9k8WJ/rCQ5Qz1IetEoawZ/zG/3HTPvg5P41pXjhJiQ9W8J+cFRLl7lEQf908A+q4wdNAoaN3QbPUp+oke//PVJfFzravGWDa94x6Geok8LYiooNjdoHFuPPfZY4Lof4uIYuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724266554; c=relaxed/simple;
	bh=zAWEYZlgE0TpR57KJrq3lY2WWCyCO73b8NItoOKvjbU=;
	h=To:Subject:From:Message-Id:Date; b=MNNVXBxb3BRg6fkwcxufFxCOdrnr4S0+Ijccqx083vHBgiWrluIA2QzGv6XgF0N4GwK/DQWfSpP24LNGRV0n8SXafC7LrRkCtcu5LUMoQevpT/HHGrv2vrt4xCH7hMHqSOcupwpNkBVZwH817XrSJ1aeiGc4AwQvl42NRKQQRN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMYUW3Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMYUW3Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C2EC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724266553;
	bh=zAWEYZlgE0TpR57KJrq3lY2WWCyCO73b8NItoOKvjbU=;
	h=To:Subject:From:Date:From;
	b=hMYUW3EjK5orsoJOBtIlBRk8I0Xl19iCag65mTuEx8ED0ggBffAYxUgA/Sfz+12ti
	 tLOve/+LyeL6h9W+hU6+a4qY0ALi6xdTf/dNhGP77HUqihDqMdJMud+f6ZKBNQ2ruf
	 k1LnXUqHhG4DfKdebpuZtLGmuOXjFCbpPja2kWUHOQ1Vb39XubBSAsLXHI8pJGQTiG
	 dY+ELxNyOopvuNVbRribPeAn8Ed8ikqnss8ZjvFxayo5DrnnBuXJoa2Dnl0ZZGS+hO
	 0gZAPk8C1B7+M5jKRg2vznCBB0bDigVP6iUHrDGQTI6ma4r98FNJExXdbKCnexWeXn
	 1KMkw3dKJEbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B2C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426655360.31628.7008847425406660364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1abc1a51d327b09f8841846a874bc761e96213fc262c6a19fc0780a827b371
Date: Wed, 21 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724266553
