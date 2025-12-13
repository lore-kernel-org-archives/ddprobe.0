Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0102FBDF6
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765621973; cv=none; b=RzrFa7KQnUquiAH+uVL/gbbrVRxaQThbotqDRtjw5mnIRA8K5SiPLVwouNdxSbwhbVZrhL87ZH+26qQ3tKUKp/rAzlUHGZksFFCB8AnNvKT13i7GO3tBNhE/uqENIfjdfa7HVM9amPO0ZAAumXeBBRgZwPJc+27lN+rBp5g+Owo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765621973; c=relaxed/simple;
	bh=AYohWngl/gJJObSTUAPrcWBx/oP5iNZvUY+zGrLc4rY=;
	h=To:Subject:From:Message-Id:Date; b=Ra/s7LMzl9RF16SQKfMIVjZNcaOxE0xYkYvgqR4BDHPi9Eys1rNxGVq1uUgcDFFLAS4ugp8qWF8IUWCFmr9sbhBzSX+umBrHIArHPtuHW/LOedr3s8odLuEj5FI5jS8PsegovGeEuQoNfkJhiKk0DCL9A/aMFQ8bg/yiMZMzgBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnKJCsjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnKJCsjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD68DC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765621973;
	bh=AYohWngl/gJJObSTUAPrcWBx/oP5iNZvUY+zGrLc4rY=;
	h=To:Subject:From:Date:From;
	b=TnKJCsjmEP4bOz4Lq39l7bfjMg/5rm1BDKgFODDqmA78z+tlG0c78M0YN500UPc+A
	 MOC1909vE28Y4LNg+CdlJrH/k8OsvtZkF5PPReSY4N5Hg3uqIOu9LbE+OXpvHvUaSM
	 2t+/BNpwjPBcQMnhHOBjq2R4pnpvR1Mmm8+h6Ws2/hhROXDCljYPUkDB7gQYcJwXKd
	 /W0x3g27IL21oIWmt9JKg18PZTh6WNt/eNozhoSeUKLE+H/N4n8LrjbU0jJrpgf1C/
	 HLmHN60TZrqDWNP39YF94JC6ZJidJj3CQRbMZd7W81pWjv3wqdAV6da3iDT1vuyG2l
	 lJw44FDz5Gmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B8CD5B149
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562197358.7960.17069298147282322934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47a7a27359d714ee0408884948253da5fcfa15ab46fbb5defcea121d2be4e85
Date: Sat, 13 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765621973
