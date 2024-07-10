Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3238882C7E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720643243; cv=none; b=PPmIGRqQmdBxCxe4cROhxHI7FI6o5rhC9+Y3QyFZgCCg6KSB4m7FD3HJ6+cfIHmCvNPfRPR4CTzCo8csUeufnVu/6baOBa733nhQwEyG+1ekH4/SKK5KLMwqUEoTHwUCx68bzT/JQ+dEju51ekWTVukhuWujgVDHnWDPJBMeXa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720643243; c=relaxed/simple;
	bh=PBRbcj0uxcxZ6NioQX6UBxfXCcuTTrv5vmaS3NUDbRg=;
	h=To:Subject:From:Message-Id:Date; b=X1xQc7D7tgTowik6L6+Bxp00ce8p4Hao5LRe0lNWZEmXd1ZL1GbBv4MUOSOO8+81HfNkPtLfQlLZIjprnyiBl+dkuvzSjrvSBp0+4DRLdHtyEQZBKaG6swYE5+Hf4ZM3FOcxp2LGOT7T2B8V8s2t3Ish4CURE1evlZatZaCkRj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tubrWeiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tubrWeiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC8BC4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720643242;
	bh=PBRbcj0uxcxZ6NioQX6UBxfXCcuTTrv5vmaS3NUDbRg=;
	h=To:Subject:From:Date:From;
	b=tubrWeiZFgY6f1GmaO4u1hdOGt+LUvkUbqgG3tkBR+h7rz7va7P0NrNQEp2QN+gkQ
	 ysHkRkjRQD9IriF77/VH0DVYVRonyOjdqz7HvNbiJMkCSMgUxkGBRBhO1eKeEcJ4HL
	 68vnjb3ShMAQDXSQj6auO0Ak9VfSowTQve/C9+gAxqejPF2sOIoXYZgLBigAjQWNt5
	 eqd+tAcFWEZBZNzmQDVR2O29O6H7ONEvWt1Q5y36MWPqoHN9Hl8Zgq4xNW8XZChbkn
	 alq8D8wCg1IRbqk04cUIBXoC17iHPAiu6DZZBrjbVfABkKGc4bH2R8NdmlnaU6v2hv
	 QdftDn2h4M8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF17CC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064324277.11946.7261069614902398788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd437df8d54f3fba25bcf11a112596435b3443273776822dda7a8599c2056b96
Date: Wed, 10 Jul 2024 20:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720643242
