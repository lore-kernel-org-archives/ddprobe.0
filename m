Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AC8134A8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBIPqtyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ABFFC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704768496;
	bh=CeiHYVwPilJW1jBcvShwgk1qRN0b/GCnZzEiVcXBT5w=;
	h=To:Subject:From:Date:From;
	b=bBIPqtyB/QWyHIKjp9l59A1yqimHP4nRxcvEPjSJpt9BLgwHLnhy9EwxaS+WOApnv
	 ETYoaw9UN7sPrzSQPwYivRhGki6uH7qZWgojCn71feeRlpFj4M+SiaBztp6Go18d/Z
	 QRiZ9WXCEULr2IrI8j3469xpn69mVy8k7zU9HxV3ZaSZWRPGPQYXWbFchnuwSDNdGt
	 48scpPDAxgWl9F2BYs1YqN0LUNMKNhJmtDB5caOEZ6fmV6+JXTFTL7/mdyq5rcIWlJ
	 GRDE+7HbaOaf+1rQwKRPeYbUZfx3wPb7kl000NKfdek9Rd0BqOpi6bm95YdX1Drduh
	 XbLjZzz5UG0OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5BEC3DA6E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170476849642.9468.508706169935242948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29912c907a8530ab69a9503c135492489575d674964dd31440631f7224d5d86b
Date: Tue, 09 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704768496
