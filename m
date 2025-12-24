Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2587020C461
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766594034; cv=none; b=Vt2yBkeFXmF9J3dvcqGAq5JOaRosUF/siTFDo8kHKMxjNBI8GlQTeOKYGR36ZZrpTyGKQlqS5/TadHsIFAFCLTrpxHm7ZkSQQ/Ye3Ln8qDm2+flUIy/ZVVww+5CesHUWo0cK6epIg/OD+qcITWatIxXKRIAp6DYr6f24Pzdc1/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766594034; c=relaxed/simple;
	bh=rVXGbo8vGx2f+Fhfhpot/T5/kYC4rvBSJ/C1oKOljtk=;
	h=To:Subject:From:Message-Id:Date; b=TPl7psgKXW5qMC15Sn04cAOB+QnjJurA7rgwKgymbqU4LbCtcIAHp+GIlmI4i/yldswqjfAq6WLwDBe2Q9LgexYjn3/Sid9YJ5DX0L0eKCKpMm2j+blbQHu+zjlAYidZ46JEK9/mDA3dqFlSnURk65kzOHaA1FlOeK9OpEoGhm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEA/Hm2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEA/Hm2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFFC116D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766594033;
	bh=rVXGbo8vGx2f+Fhfhpot/T5/kYC4rvBSJ/C1oKOljtk=;
	h=To:Subject:From:Date:From;
	b=VEA/Hm2rrhxyB+l2TdgzgfiWTiFgHnVt4i3i6bvnX+FD4MiPYQTQqsHL5/hObcDar
	 nTfG905nyTxK5WJVnFJ1SGdr/ua7rDa9CRJSw6ZxjYvWdmvNytosKAUnMlcB2467CM
	 lT4EAAa1MQFAWozZsWxdi+ZK24MYpSk2CTf+nyxglV9t4e/pFgEfcV+038mG4TXopJ
	 Cq4nc6DbaS5a2QnWkwGAcuhnO0MVOXFGxzOpEznxnhoxc0wEZPJOdbhwiDu242uFzK
	 rJzjF8bHQ9ObRjiFVrwyhtZlBdlCVEURfky71ImDA2z4cBSfOQH+0OxLZ4bkLXXj3s
	 SYk1nZjvghmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB87E776EA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659403358.10712.924583415181330273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b0ad726245ad6d39f15d958d1e372b99627222415bfe51c94a1bf1e53628c4
Date: Wed, 24 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766594033
