Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7367B3DFC84
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773430494; cv=none; b=Lrgyb1ZSxI4kLXwCztXnOfdCZv1SEHJBKgw5VWLwmidnp9fcY+yCyhdEXByCMB4MdBtRo5tAlE1epbJojitd+xRx7VRaUzdyy0LFDaaKDVqEbdkSltsphg5URB4RHSIwOscy4AaEfR/rjjuq54ZeeGWu7/CVVvL5mty2TUqEv74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773430494; c=relaxed/simple;
	bh=GtyC+of7B8c1FwSUyihb0sBnadYsnZVhimYBju7OlR0=;
	h=To:Subject:From:Message-Id:Date; b=KPvX9MI3TkbxN7TBfGucjl75mtRU5/Ng11MhcwQw4ktf2LuWwOu6dbwDWRrFmzJXmdmX2NVew4e2ztSLId2QP1Wxs7V64htrmTiyLMY6+1I92HiaTt9fyAzGfG9ZealKwqJxKvH/rjr5oJELMSW+/8kI1V0fgsUH+RRb6hDe0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0DsgtDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0DsgtDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE6C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773430493;
	bh=GtyC+of7B8c1FwSUyihb0sBnadYsnZVhimYBju7OlR0=;
	h=To:Subject:From:Date:From;
	b=C0DsgtDnUV0HrFhdRCdF/f4YYFA7oYaz3lciXRumWTqzk5m8LLZvjTYc9pJf8LKZl
	 3O6ge83u8S+yRqI64ztTKzsmmW0I8v1scIxKH2KCdGf1bvtFPwHHLVVM0myHjQHD4u
	 xehtjx5wvb1RLqYnS/JI1v5JKMAWsYicwZk6RN58yRF5ggB31lG0nqCNwe9NziNmB1
	 YI1kvs4utCwj+lN/cdgKF6aYhW3aTsdszqvpPS9Ksnw5tCMl3c7zvVQU3o1OQ3DmCT
	 tG9v14GYQvn64IC2Wgv612dQCJ9n6l3H206huPXOJrbarYcsPu9lfgxWwBgKr6xe42
	 9g6NIXQJdD8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0BA107BCE1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343049362.29449.6261942907611392136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e10d0429f0493dc9f4f192e80440bbe78165c0fc5516c493e1c3aad7e6a0f4
Date: Fri, 13 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773430493
