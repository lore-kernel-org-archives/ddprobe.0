Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDCCAD2D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749915595; cv=none; b=JvQPfS6N3aNzkQ20+4jxsLrILzt40IOAvjB1qhqB2/E9kfWoipcujGjF6lda20rQcGb8HghT914Gn/gIFrZK39SqaC91XIYkNS0UDnbJx07uX7tiekyPK63WDdkPMHpgVIhNX3dC3TNdlX3eNgyABbDENMxaF/pfO6TlxkHURbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749915595; c=relaxed/simple;
	bh=+NLlHDq3ntAvCWuKzLZV22k0OrqAiyMOSNF9rMJcfXo=;
	h=To:Subject:From:Message-Id:Date; b=g9MawuniZY5OtkT+JDVlTqohfu/f+/JLmETyg+y6R46wr1lHm8tqEc+zxMj6sxOXAXPIivXRW+A4KUqPjtI6BDzgKztrYga0DjArAg1rT2IEFAH71lHuU/BrAPlxK5dNAfNRxtP2vVopfxx7/p0qEzY9ilCcp+aSTcx4Hd6+ZcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdqkOeT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdqkOeT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9066C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749915593;
	bh=+NLlHDq3ntAvCWuKzLZV22k0OrqAiyMOSNF9rMJcfXo=;
	h=To:Subject:From:Date:From;
	b=sdqkOeT6h0kMd9WT6IwrZn9jy6XCZCqgdx1130JMLxKExFYGMPWN0Nk/LLzCsj70F
	 TJ7VQ5YyUuLDYOYA1RoeeGEm2gyg5xdtx5aoeNvtzNUNZM7ea2WfloTZnw1U1P6RZX
	 /8vLg3lCDRJRtwtjihjKgR3TGyH+wPfBNwmngux7eQyRuN9PEWNB9HArGkVeaNGt01
	 rJs4CScc8Ak23JUMpyJI0miiLp8Rt4fzJwKYA0ikJc82s3SVTgSBPKc1WFB2fljvM/
	 eTHfDSAOvVDXtDAvNZ+2dyCu82KvRxzzVzUKZ+yRw4K5PmZy0e0QDhFYyJkkyFf4+t
	 AkyUsd/X17Q6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592EC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991559358.23813.7015124485439066330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be649bd4ecd04541e3ff895bc784256b1b866d30744183e27f327f787a8dfed4
Date: Sat, 14 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749915593
