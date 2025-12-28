Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320DE1FA859
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766942634; cv=none; b=YPMB8f3cR0D6vIIxrR9U9C+jUiKYoz6yani3CNTE9K4bYbvXcStLU+wPyMrzMS4Q1kZ1e/lXxMVLUKxO0gD09rJ7xSCeIHXxW0OMV+N0DSniVjyPXz/dujA3ogZxT111uwjbffA1uqEZlvySHTDvCsGu5e0pxDwp5JiIe8tdHCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766942634; c=relaxed/simple;
	bh=tn75vOcS4IxgNFxgzb1VEFvc8FiCUZn29uMZHY7Yxxo=;
	h=To:Subject:From:Message-Id:Date; b=T68hbi40KobdTiaSlB7q0Y1qm2IrJ1S+LOX8ambbkXTVhWZ/99YUcpvYrgjY5F4jD9GNiEtHWC8Zb2Z1cx0bgZQFpLyKJnFF8V/V8DdH0K7r7RE0XtUljhPGLjCA2PljIf0xpmM7RrUTze43OySOBJ6m1wcFYLLZVSlK9lLk6aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H78sygy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H78sygy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EA4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766942633;
	bh=tn75vOcS4IxgNFxgzb1VEFvc8FiCUZn29uMZHY7Yxxo=;
	h=To:Subject:From:Date:From;
	b=H78sygy+P/P6FBVuiJJBIWtzMC9CLuLGuoQUKsm2/pFuPzwSbbEewb+nS1iMt/QLg
	 Bo0dHXAOiH7apnZnijQJiQV1qzyG1g8GSG5WC4rkbmqVV8Tmop6TOZ5+RvYvFpeGrd
	 /9uX+zSnLD3fogVjVikO1LWDYqDW+sN8QHLLz3TgXQI9yBm/X5sLp5ysUiR5ALT9n9
	 CcPvp5gIDwmtPW+3MiavVyB4gr6AvWCRogXej96FnQDL3GNQB2MHxlQRXR/zT+AUsD
	 dG/+KatoNMHMPFss9aROrizpL3wPxkeWIZyYrXZNzrJymCtgGE7Ob5K4VBuG5ojZ4C
	 mimpYZmzhEjZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B674D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694263359.7263.10886329891355509557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b0ecb3afbd888b7a5202f2832068b3f987edecc29b807b8e25b83aeac9e9af
Date: Sun, 28 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766942633
