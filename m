Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B40625A2DD
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778722234; cv=none; b=ZmETxeKxfYLv6ZTVGw5Yraeg2Q6BInzdthhLIqqpaHc9hNkOqd1LPQs2M1QabTZ95cmBIa+Bh38wlH3rPneoHXNhqJaKTMV9fQSfxoKVpkvf47+13P5JBGx1Q6xUiEzkHsP0LxOzuHtksrIZ7Sj0K5eqeF7eoTf4kH010cqL+ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778722234; c=relaxed/simple;
	bh=G0g1MxEs/NCtogvpnf75jX0GEP2TdRkEtlYoKenZBvc=;
	h=To:Subject:From:Message-Id:Date; b=m9LAE4Ii8kLqjxP6ESzuQDfXMNC+5QYsZh0yfMxJ/q4pVm3fgy6kG6qoCPalpbplJzwgJYgNadWN5x9A9wxQHMhMxod44GN/HNV7b54ENBgCajGZvk747zWOMieFXnBTiXAE+/SVTaQRyok4vObEHAQ/d0OEeujHYVF0vRhnLPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6qOtfJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6qOtfJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5B1C19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778722233;
	bh=G0g1MxEs/NCtogvpnf75jX0GEP2TdRkEtlYoKenZBvc=;
	h=To:Subject:From:Date:From;
	b=L6qOtfJLFG6r1hSNh3iP+HF5KLPsDwb6JqlY60PfRDTqZLm0wG/MJ98ZDnXs4Dz7k
	 0XbK+WJPLOK/NOXE2QdrYUroDKqzNLAmUMcYDa6SRXf6Fwa2yGDJ8THmrH0ob+ldRs
	 OS/t7LTV25O37lw5HOPnJcCXl6SkXLVGkamljQFo7rgGs3kvRVwcMJ9ll0h2mzJaCE
	 w2VK1YYWL6gt2Gvn6UkeDD45JgYTmyZ99M3wUz6wxO9ySYAQOZJJQeNwG+4fjguAWG
	 +RVVjpHxsrNtZ3i9+LcgoMhRyAUrkIwPywTHchfhYdKE2lkYZvfWM7ynunqkREzwfl
	 ZAZERIc3ZljqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27ECD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872223369.23091.413478107715943025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77ebf670bdb76f805df894e7769f1d86818455f69a87ca549be9de1730de6c3
Date: Thu, 14 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778722233
