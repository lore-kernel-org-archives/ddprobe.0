Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304973D524C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780413874; cv=none; b=kp6LCfu8u+31/6sm7fYtLAASHFww/NU0Xtil/HWX2wZ7f2lskZxSg2WCfzQ8qTJKEvjpBu+lvNPsAOhXKwSbg4Cc6lgfNz/OVK2IxNLkigpaR5sq49bvIa62Ur0yUEG7kH2+ALwrC5+rNiwxmm/uAu/8LW7UF9Ht9RL0HRLEc/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780413874; c=relaxed/simple;
	bh=atiwL9TrD7SgCPgK+egWD+rFxNIYjsZRbTBBEengKq0=;
	h=To:Subject:From:Message-Id:Date; b=ktJzo0kv+69fA1NCWYhW+B/UHzxGHaxWBcD/SVIoRxdtuSizqny3xA12AMLjZ61IFKspExISW0I4ftsQBw0f9j8bYIizMNmNDXw/AAFEcNDZvIKdbksNdAPLKAryYOjoFCL3t9gLHobgyiRyKv1jiMUuUj5JkuSiJ3iK9okoKrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7QIKA7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7QIKA7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DF2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780413873;
	bh=atiwL9TrD7SgCPgK+egWD+rFxNIYjsZRbTBBEengKq0=;
	h=To:Subject:From:Date:From;
	b=L7QIKA7kqQGR6M992UTZ6FSZHpCtKcnpeWBaONyzpEuHMrwE6KQu2/6pnl8Rwoo/z
	 PjXK4WuQovt2FfHOSbjcU4Pm+qgkZKWS0bnLoz2YWPPOOM3Ax1yrXk6VZL8ieseC7x
	 0at/CIv0vSBwPV8xlHXLFmXUWonglrOs2oe6cbsx+XhwIuIU+/68yLMj/rDkhsZzCK
	 UmaMo8EFy2CAaYjynFhwyaRNmP7jaTrGMz6iT8uCBgVRPvOZ/XZyHfEJQoJSSECzYU
	 2pglvjejzjqHyqeGsm3bQ6a3lLM8v/ykahjbCV1dr9jSf82OCir+1pG9EgsNcsck3m
	 CUSG0Lu8dN73w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CEACD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041387369.5312.3007406818546371919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cef4d46e9b7808ca88ce26dd6e1242933b97b9d9420cdb34c2d01fcc4e1ab1
Date: Tue, 02 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780413873
