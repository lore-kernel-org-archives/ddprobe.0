Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5694B1AAE17
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785883834; cv=none; b=mlzY7u3542GTppsoP41AjrjY97IVfKC7rdEfUpfDCqBhGsR5QkT30Ujt99zNCbOxkBgIxJM4kGHllSmok5NRKgXKqj2lPbwUHLF1igPHthVk5+sx+K0aQotaIsqgQDeXCKCcnH/fHNXVtq17k7f70C7SDZtKpP2RPNOJal6Fxaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785883834; c=relaxed/simple;
	bh=Vr9RZF3jArfZUWAYNgHuB3JuKXhDU30YTHso7xe5/8M=;
	h=To:Subject:From:Message-Id:Date; b=aDjJfOoBeUPPKiD+KENUD2f4IKf0DuU2ALVWoy9Xi5OoBHv76oYxbTCvpozo5Jtu40Zxzj8Ymr9epOseRw9eo0pVPSyqb0Vy/bRkbN90PpylNM7ZgEpVdCK/gF2mHED/lQq9Fnd7teQkwZ9oYXIyRODHVKHX22nLlzTdiLoyg3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhnaS8MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhnaS8MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785883833;
	bh=Vr9RZF3jArfZUWAYNgHuB3JuKXhDU30YTHso7xe5/8M=;
	h=To:Subject:From:Date:From;
	b=DhnaS8MQ4ARbj42EpIYJkkV0vm6SYBKrnf6KFDnGc8Q4HWDdnODbDNsUl76dqJ2E7
	 tCNdNZsK5R8F7+o3T5VjjObOM488zsvkwM9nuBsiLTWLFT1L/kjR14GpSVPe2kmT0m
	 m1jxhLg/FuRMAmMWlalDQrdUxPJhK8BkdiFbTx6lY3tHcF4gj65pzxsYFQCTgRUz/p
	 9sEgC/DOg0NGwMyXItvns9B1aRHAQIkmGLgIx9fFOXb64JiWWFTTcpMDIxffWTF1UI
	 Ba6SE5Xev4KYJ0XZ5DmSe0mT14MbuZq+Qf51nfi4NkSX9IP6oP6FOnSi8Q288REV74
	 +9KJP/av2TeEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC647C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588383369.31899.12554780446623022219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e556c791779017cd873e09a00270a6bdeedcbc1c58a443dfe264cf8a91566e51
Date: Tue, 04 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785883833
