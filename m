Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2EA170A11
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742402394; cv=none; b=tH2ISKAtcN792U7TE0gMzDME+nA8r4PMVYgLVT6Y1vvRiiihhZDI04fU6urxYMVStQeSvIVj/Dfjx6jyiKI0fLv/anQniVqxUEDKiUBG2NuGAqzo5qplsI8heuY8WUv6sdex2bUHklHs7Jb221rfmd9LxCr5poyrN6R5h/2cnuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742402394; c=relaxed/simple;
	bh=DyW2x/zBaO4I3W3r4bga+E5yzRM0FQzFnTOtFzwNVmM=;
	h=To:Subject:From:Message-Id:Date; b=TAnVDHq9USpqVJG3yTXoOvxrV5ey4WHE+TIVYPB0TjSQ5pS/7KHquZd2xQUbB/Ve4iox/j8YP0czOL3K8MpQdGLutvQJ81Kk1OpFC0n4WeZhgpodRd3ToMdQNGZtSTq1UFRrox5g3nBxE8fDMXsRKNp20PsnPmaIKMzl+cLJqEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc4JKmrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc4JKmrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF978C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742402393;
	bh=DyW2x/zBaO4I3W3r4bga+E5yzRM0FQzFnTOtFzwNVmM=;
	h=To:Subject:From:Date:From;
	b=Zc4JKmrR+mZNKcKtQ8eXvz3t3p7A4LVUjyDjCpv6Kje5X8N60FrPKiH6BCjIQY6kv
	 qTwo62p3UMKEbVsIzyeLBz1B6yvjTe/wb+89pkerh7lpUgDwomYQFwPzgtwW1R8AS5
	 SrryaWYlUns+WOYOaJkD6DKczxR4HtxjKx76stBPldcFGQD7VqHSopHnPHVo5FSsXZ
	 deFi1nkpD+IRAg+RP/ecOenF1T9mw/JiW0PJk+JZZMJMEYriA27Ywbsk/33EDNNETl
	 mh7nmtrSPuSF864xa1fKrJUIqYC67PyDYx0Y+R9fui5/YvBTPLxphBPQXilvGKxpHC
	 kBicFaHp+wMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DECEC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240239363.24760.12422835591964814605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36b99028738412e9a955090fcc52ff253550245cda6936d6b840f05237e32ec
Date: Wed, 19 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742402393
