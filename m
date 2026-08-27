Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4990D36C588
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787857834; cv=none; b=baS4IfM2reOxsbDVRWRNFCfJORqSFE5MSjTD7VivCWN/S6L1DMes4cCqSez/k4tZM/gRNTk48Jlru7hEpJBX9UnNwrYUevcuOTKRdm1ZIpErbgyZ7n6SnwwqwdhvYmPM2cpPhc5Wsjxpbj+HH5Dxza+M2Prir1Y13f8gk6Kz84A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787857834; c=relaxed/simple;
	bh=lfXKlvsMSZ3Hn/WQrMP2TpyqBfjkuQwg8lzO+4bMnkA=;
	h=To:Subject:From:Message-Id:Date; b=paV50skqon8/3oajq1QSP5iTllYGKBqB3AocOEAWj8KO5Wu96Gf36GkI0bE877OOFlW1TTPiHRvsozhF1puidTw7Cafs6Yw/v3JWugxlpjzDxinih/S/WHKN5Eh7luA6g0tPJnxQQeg3boyhOLjrDM5skNd/pMJY8j2P2dWAfIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+yTMmth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+yTMmth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA481C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787857833;
	bh=lfXKlvsMSZ3Hn/WQrMP2TpyqBfjkuQwg8lzO+4bMnkA=;
	h=To:Subject:From:Date:From;
	b=k+yTMmthKH++IJP7VbKzgBsX+gQVeBNwt7AvtAMJCWcS8m0s7tfoD37Yz0YbFN+zU
	 VSU1lVNBdvsJiA7/VAKimpAo0CtuI9GI/gVZblc6a7xC36S5qGXMVaaj73ql3tjIb2
	 KlZgtVzwGJd5GnkDuAhw4loD8c1Vu1k5n8AUw4s2mY5sKAmS2m3PFRLwXssohNdkFE
	 Ze5Ifrx/BZIwxuv95oRMU0iUFg4tzmxoGQ2eJ1JR8klpcd7+3UsSmpWlVsRbsb0Dox
	 zEiv2SybMduaDh3esV2dCVQqCMdYcUm0gQEu+8DtD0FzbAEAOIS8ljDYL3/PT+PyHd
	 GkexvLVYCjUmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914EC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785783368.816.11103265269779127613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0567ca1f83e969009a8b32c83b4ab177a3b4b30557acb1ac40226b20affc2efe
Date: Thu, 27 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787857833
