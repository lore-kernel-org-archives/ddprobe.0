Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E0381724
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792039834; cv=none; b=exXjRayQgDiV/g5kD38Z0inUj0u0p7UQVj2jA3VFTOjTgM+xR3faUZMgXEuAMKYxCPW14gOTG5XC9UrsVOvp/kpFLy/8HyxAdhv3IHbGECOysJ8X5pLHFq+Tpii2AwyOcAdH4U6Ek6QsUznbM3RGNW7jtNx4NgGRtYkFpPPNaLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792039834; c=relaxed/simple;
	bh=ReN/tZ3xPxoQ0OEY0rJmMc9IEdkr5GGjIRDE0kIK0E8=;
	h=To:Subject:From:Message-Id:Date; b=isUcfvRsAv0oA5/EwfZpbojDjTmTB86qIn+x1Qhnf/8ngJ0LVY+b3P0jGM5vbAsHm7C/Cr7O098tRZ/rl2o9ejqA0fJvXU7nkTCnbuirrgRHcTzKahkJGQtM2iUn4srNaeVQjOOpFnsBQenX4Bpz5Gz7+XkySBVRI0Ikjihum9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMLiDWsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMLiDWsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F6EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792039833;
	bh=ReN/tZ3xPxoQ0OEY0rJmMc9IEdkr5GGjIRDE0kIK0E8=;
	h=To:Subject:From:Date:From;
	b=WMLiDWsccfOp7wTDoWBcwDj9C6pz69N2gDLTc1YiuI89IwZOO6B4Fvps5J/aZehkM
	 mZtzxa//bsoahJ3IVSp3jWchTPWUaWDA4huvi7NBsN4OA/pjEl5Af2vcjhK1Ta3Qed
	 u4UXAoqL/nl+PrR5847zuBA04G5Yk8Vy+3jODQ2IXlGrVk/UtzdvAxmC4J3NwmUavs
	 ym05I93zJSBE73TvUVIrCmFnCB4ng8j9PTmfjdj6l+lSYgA3UO7Lavi/+rDIm50j26
	 ygwjHQz3CLHbx8Ghcx9SEXw050ElDv8p47TFkqzdKKfF7cWXo8lDUXLzizgn8dHv0g
	 U6Eh2a0uj0xMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C0CC6B2E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203983370.16732.5830550446723688359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2fd4e08bc50431d71eb1135bf02f6bd9ef1f06a677b9f093cc53eacd213864
Date: Thu, 15 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792039833
