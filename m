Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E693E120B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933294; cv=none; b=Lk2urnYxk5NdwYa7KLELQM+ult1yZ3Dcgh5cgF8jFhOVr6tSRjxgPcqdvlPbDGfZ8w8FNgZEAm+BLDTlyhdckvWVDidgnuk90Ph10zH8JxMnhgQ/kxU9kyY0x2jOeyLBOesiNO9+lFEGSiRqlsek3xaBhl2K/lQfUBTKLdaqazo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933294; c=relaxed/simple;
	bh=O+0PY2W2Q/In44UK/oMgvE8kIIgy1aJ7cSMpa8pYrpQ=;
	h=To:Subject:From:Message-Id:Date; b=P3sUPnjqkJOF9pj+BJcqwNiXlYJDkzoWE+OmOJxpNsbX/UzPVYiU2KM2KI9MwD4wFHGCjB/BcX7vmC/A8RV2pFd/RtWEr/PW4qCIaQTceC0STU6L4sUOjADBk4cY9OZ0o4Xfux4ATNrLLXznTd7yI/5hP++6QIyIBtgqrM0N7Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uva7cfWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uva7cfWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF96C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773933293;
	bh=O+0PY2W2Q/In44UK/oMgvE8kIIgy1aJ7cSMpa8pYrpQ=;
	h=To:Subject:From:Date:From;
	b=Uva7cfWBOQO8HJqzMu9rWhUZOkpBUJm2tEo9Xm98ObDOK9ljvtvbZGrkG48VaXXFd
	 +j4X2fjj4YBRuJtuQCKG9omwftDpMPEumIHTETdLcVvU7cUj6yM73wlAZchgcUk6AA
	 npKevMgDMFRnP33wE0h0R0AKP2uzZNUbSWKBhL7sqNUdxL9pE38NHp5h/UfVbpv9Vt
	 UAzLQb5FE+s+QyApoAmxcf0xIsIxNc9/xgbDaK0965+qp9kqpoQkUlVBAJA6VjC409
	 lmfq/0+Ka9CEPONNkOa5BpWDt1SfiJ/SNz2KP2Rsso3FhGv5Du79RljMk+QoaGRPPS
	 +lqkuk2pf9x6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22F109023C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393329357.5756.4329179559584272926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a592ec7dddf4359ecf8e98f0f4617ac178d2fdb6fba5bae269c8b70af1399d5e
Date: Thu, 19 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773933293
