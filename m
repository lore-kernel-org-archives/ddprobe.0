Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299DEA55
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749364795; cv=none; b=s0TJu98Eo5NJcnH4U51yKCuQ3nCT5VSqSpAut5TfxKYoD8xDUrgt8y9zQochIRSJ35VPcpp6LxcFjoXIpohokz7gaFtGzSZ3MzAWXu+NqAA4/aPCgkYPEAP8rVIwnlmbRyp1lqkfeeAb3K8hkLJoVeUE3YA9azg/4xGSID66alo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749364795; c=relaxed/simple;
	bh=2iP6L7g4yNOdKfg0iOf8ALz5P0mW3yJO6wu+2Y+5ZPk=;
	h=To:Subject:From:Message-Id:Date; b=bMhXlYLTTxyWQXzsz0lGUK8CEoM4N550p50fBrTN2q/M4vvm7grHDJ52sbUBwHcZNTUPhu3oW4u8Qc+G9noCByt3SVCP+UqPsRT6HMLJgSUljRvRnqqAcnhFsduYdLavfD0vy/9pAIUvGAK6C3RbYHYONjPeHOzpguYlwX+roIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opYMXR4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opYMXR4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6168C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749364794;
	bh=2iP6L7g4yNOdKfg0iOf8ALz5P0mW3yJO6wu+2Y+5ZPk=;
	h=To:Subject:From:Date:From;
	b=opYMXR4BdtYUpQeSvgiRY7GZ6lMkop8SOEm/wdlgJ3/elS/Ndbbedue5+eoWrSrFH
	 qeD0ne123tMVQvCByUGJqJhEYJ3zE8jr6vjPcKCjKJbaemwTZOPHwNbCktKWd40rfI
	 4srgPaw+1A3q1hjQ+7czr9/PCOEGMVtFoO//ILP8fnIcaNs31QUYx6u+HEhc0AUhan
	 nKkTN2Zi3mXmPL3r0juy5jxf/6qE2cqFtFp1kiy9/WVM+FHqXLWvaMj1xcnAJ6ah8z
	 g3AKY9BR27Wzwv4VDnq62NACNpAj9VIwQPRyMhK8CgrBmvCY0nzOTqLpN2pQvQV7VK
	 AOa9J3eRfKsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91185C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936479357.29345.11711045562468303540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dde22cc9e0e62f276cdde464cdfaca2988c784c8313ff60570a439d2f6c7617
Date: Sun, 08 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749364793
