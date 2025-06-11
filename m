Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B62405E1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749637194; cv=none; b=f0IPNzxAD+hRPuMkFdQMy5f05BQH7Stbs0hO0EZhbu7jHne3HFnAsgzTpefv6D2QS/wjT8EWWxKVL3NutfIba5E4xfwUHaOAWOF/zW0goZceyMKub+d3Td1tG2MrETfaBWGH5m/UjZeS+DD4iTLb6hnjXELItsFMqgePqncjIkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749637194; c=relaxed/simple;
	bh=IVQ3g4mn3GqqnJ2dEG5QHiH+bszjJJLPSTE9M48Oe+w=;
	h=To:Subject:From:Message-Id:Date; b=eFkduoSUiGDfGsKCCISwibhMwenJw8bVIO2dAy1pWFLNbUXcxTSr3BkUaBE6kGVOzgxzGaCWXfiNkqSCSia96jGiEwFilx3jv03+bDvd6bx8U9pWeaJXyjSdH4ghb1tBJ0j+DgEiXGho0oXsreUnmzyAbYuhAWriIpB9s0rWtGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGNqQbJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGNqQbJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A485CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749637193;
	bh=IVQ3g4mn3GqqnJ2dEG5QHiH+bszjJJLPSTE9M48Oe+w=;
	h=To:Subject:From:Date:From;
	b=lGNqQbJ8JuouLr6Tuh9FGgEWnNMGAl2ewOqVOgofWOgL5cdL1oKYuHAErdFMC00kb
	 4xt+YE0uVqBqXvzMMXDF7aP9UPPm31d1jP6ZlG06+UpkBN56+UV95Cvrb7C9H3Z4ah
	 +kJMAGNsAw9lZJsMbIoXr5+z9PF0PXpMDA2ZKVz8k9IqSHLzH5vb1KnusRCuMJIpGP
	 A19GZdRPWlbB51N8dY2aWvHdU5Cl84oZTpBzyQsNCL2oIeM2U7V9r6BWnq8n8qui9s
	 0LLMFeUDHeAVCeMT89p87JqrM9jGJ9HDUzeTb8FWOxjDK/dV/sowSZxo2YN1j9Vu35
	 QY0+PWI0/0VxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A8C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963719358.25888.6849690227401820939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a0aa1ff382cac72366e033be813096d6ba4eb889864c62bf02c474ce103aaf
Date: Wed, 11 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749637193
