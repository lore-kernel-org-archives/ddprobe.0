Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BC7244669
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759288194; cv=none; b=kAuCNyok8wW8lavUd06Pt/ZxnvHLN5Ju5AZz8kl5Y/KZ2wYHZzvflk92EaPmiBC4xND8xB1Lrud1jT8fThcT7WIvkYvRK/cEt7U8H+SgRS5N37aPnhpOrBu3ok5Bl0zeLV5LL6ZsKYOnLwDYmKtwju3s0aXSji618UNiYW2BIKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759288194; c=relaxed/simple;
	bh=0mb9TsMB9NopDZ72F3Gm+e6yYV8jgTy9YhzCkBEpKG8=;
	h=To:Subject:From:Message-Id:Date; b=A1tr7QgAY9m+ByjfZMoAmeeBn5MzYvD57kD+xEIGC1C9m8yQJyBjQ+gT08vV2SWdDIrVpPlyRFTNWRA4ypQUu14z/6hzbKi1+oVLZ3aKygKJ58Tciwdfa5zaqY/OrCvnVgDk2DLCxXPfZGNRgwlmk6BiOG1R02xM+VBTZsbOL3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBKiiPPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBKiiPPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02FF9C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759288194;
	bh=0mb9TsMB9NopDZ72F3Gm+e6yYV8jgTy9YhzCkBEpKG8=;
	h=To:Subject:From:Date:From;
	b=EBKiiPPKu86yDVGx84ictsZzu5B1m83ixyzLz4b94u99Qvt9I6wizozZYn9HtFkIp
	 b+jZFN97cIlbmM3+ZkIX3LqKrlu61yMX2AqB4MlDoGG4AiZBIQYASG9aw/XemFu1Th
	 KCz7IsdSUFR8E2A/xTvy4v6Y5Aq5jGc2ZBClkcnZ30T3Nzcq5Y1P6f0AN9L0VKj+OX
	 /U+aQCg18cTeB65q9rfiTU7glFs5IMf6qg7NKh5HvbME/Xfmf2lUWXTi6DzA1yoqKl
	 Fhntoy2KDYmF5Ouh91La8x5z8WhNMsWuz89wMPwlS+A0VNrDEw4yd7+yZ/nePBS25q
	 Sn/tIPCcuvfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AF2CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928819377.319.13249361034887897665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1deec92d9afe9821619a09fb8b625cde7f353635582365652202fed74a2bc58
Date: Wed, 01 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759288193
