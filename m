Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A7D18C33
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764459774; cv=none; b=ottRmSdy9w3qyOtOaFuv1LP3LPJa4dyDNwkDSya8RxpWqqCr2X6wA4d2Mcsk7EoUee4PhUs8HF9HjFkPRO4YYITPN8UsIUoiI6lCYdVW/Gy1hAwotfzX6hKrcUxuY05JBXtWWS0sDvn2X5VvXsZrXecJ3QKNfSVhdmWHCbg+fj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764459774; c=relaxed/simple;
	bh=xgW1BDFy5ZxYI5X/b7EOxcoT7uVgoqA2MCPuYskQnn8=;
	h=To:Subject:From:Message-Id:Date; b=caaqTPDQ3qTf0b918SOQ2CvdawXTtXbSqvNEvk2UQf4gWUAeUd9w2oQ3Jz5sdovGXaEgD+ONl/djUqRDCUdVMb9fiG5MXeOgPf0ECtPWB7+ccGY6Uu5Ks+yH/uQHDTFjr4cbf8NMPYz1BV+LKRhKifrX1T2bAjDeAseoSkYtX/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4XLvlb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4XLvlb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764459773;
	bh=xgW1BDFy5ZxYI5X/b7EOxcoT7uVgoqA2MCPuYskQnn8=;
	h=To:Subject:From:Date:From;
	b=I4XLvlb+x3F/THumvRogzSdGI2sqrUGZ0AvOW3BjLqsYUja1exBL+89po7WxPtEUg
	 0jDkWFkWugX00aw0ISh+QRx0+sikjJawnAbT4B3BmU0TVsojIhO+ij0Wa0YwX6BhQO
	 WQsVQFLWEUAV5amP9F2IC++f1OOqawdfHrSmnYoh2Bmy9s/MvCYYP6XU8bbIbyvFIq
	 /CFC7LKbtAQtUVX2bkK/7NO54VnAlAMjhJDVNYBm/x0f/u3/VRlMbzOXMAI+Q40efp
	 DnEzRaC69a62BOpAvEzWaTQJkkUY77yVPNWSAJUkM1nWTeZ9y7obuvpu73D/9kwZZB
	 9S2ZenHxwUxSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94435D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445977358.1601.9271704756843833591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6209e381dae85922971adc928f321bf84de19350b81e39383a8b8ac0556c5b
Date: Sat, 29 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764459773
