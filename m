Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AFE24167F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752495596; cv=none; b=CoONglHwJoIG6uTB10gC9L3aNtxuYAcKt3cz24smP2p7TmY05hVa8NezFstJNGX05sO0hN4QSGao4vm3QLQmwcY2voxlfJ6Ii7KHt1uUht568FGyE4lcRIMem/0c4WhXdlpstO5lN/1H43NPpp4Rc/FqRY7ZGt0LBxLYXSHMvo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752495596; c=relaxed/simple;
	bh=Xg2PyU8bVEyj0ry1Pdf56lY9V8Lxh6pADaJV5qSAPak=;
	h=To:Subject:From:Message-Id:Date; b=SwJF7/CtGNcsrEXqjAzf3ujqfJ0g4jKfKAcQefvdBpM6lG95vO/HY9DCn7iJVOY+Zn3lffkfpvKCULOHe0QtTCpfsAIJTPw8y+INrGptimDqGHTNreMPlFk+u3bfzh99BjL2O7F5YJt/xzNR+oxxaTwbZGhGW17YqNq3YhqDBTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmT+iN73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmT+iN73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB206C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752495593;
	bh=Xg2PyU8bVEyj0ry1Pdf56lY9V8Lxh6pADaJV5qSAPak=;
	h=To:Subject:From:Date:From;
	b=bmT+iN734UWYwI+tL3gEQ3ms3SrpygP+r0PmoUoVo/MjSsc/MehDG01oFlh+V/Bk9
	 jksULzWxkcvQiLrr2fUtY2zeyZOxEsz7IGa9gAehzSmmGN4Pxnlq3ZM+1YwG4L1k2F
	 LbsRuhq5A7NY+ReP40hFo1igYzJUe5QLnekqSuDTHm49oe0RUHoYwifbssE/zTUCKC
	 cDRl7Ahb864mIoWAKUvOm6B7VaghQML2hYnYfwOEAq6SN1hVfi74fe8uIjm7JoZGV1
	 AZ29CLyD/BsTDBmZ1N4q3/WFQBQuQ4UVStsyEh5xoHUX2w+3tqEuQsbJf/sbfcMDVL
	 KeXC6GYeu3+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1AAC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249559362.15965.13130519010719084449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21b2fcaa27dd770908dd7f9c5e1c41813dd71738c0a782a130414504ae0776f
Date: Mon, 14 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752495593
