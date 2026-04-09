Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EB730B508
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775759853; cv=none; b=f6TdMMh0RxTUQVTqdo4WRlsfOgLKv35xou1o9vf83KwyL1NPXyXsS2FEQbHw+04w8w9ivJo+6WFplGG+gkyX7+x01DPmHF/pIpIpQ6WsN+2AB1gpcVvC7/1JiAgEnQ2/zYjocYb18W8Ba/O+CNbYENjKNn15K5wMkW8Ynt4UYE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775759853; c=relaxed/simple;
	bh=ITIlTQEuF8TBsAdjyjlF8M7pMCMotEz97J3RGcY7UI8=;
	h=To:Subject:From:Message-Id:Date; b=WTFUYGE/yessyMmVnZtJ44GRFztTNkXvmTnFinaQ2zifbjeH6IO6bfzf0BjZO9TOCx7jkSl84vQ1FJe0CnEtNvyQylrSpAzX+o3IstD3q4F+U9Eq3xO2Cni6euAbnhVUne8WGEmsHtmI9WesIibt8OsILyjm5yuq40C01kxlCig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZf5vX0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZf5vX0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA632C116C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775759853;
	bh=ITIlTQEuF8TBsAdjyjlF8M7pMCMotEz97J3RGcY7UI8=;
	h=To:Subject:From:Date:From;
	b=fZf5vX0tU6XVzmB+3PFHl0ZNMaAUiHGpEmxAx5ToxtH+wQg7WAoQDI04en7A7w6ta
	 ZinWqNMFyEuS18EUh2eg5QpSYX9c7vASANXvKl2U4MHWjdet8C8vB8B8wfKB1HpNNP
	 KWsyAPPUXNHgvifWRBZeo4C0sF9OPDgT/TaK2ApI7ZtXoWp0yaexaVoUhfpsKaPMBG
	 oCJ0XjJRAe1+NlD6HFnN5Zv/LZ1dSwydNlMytXvN7SHWTc0DJV2K6c/jYcT5qoAHCg
	 E/PLVQuRrE2LgTaFcJjucbTxjSR9LS4JrSPaQF1MXvK/YWj+hgotRdPN68QDvfmbmS
	 TXaLNkbW+cgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DBF364AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575985368.15803.17301325968417072820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808a175bea1c64457f6cecb39fae3f28402105f161af6c16d24d1bdddfc82140
Date: Thu, 09 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775759853
