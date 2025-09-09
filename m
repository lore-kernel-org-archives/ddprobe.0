Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109421FFC7B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757396395; cv=none; b=o6QUxh2Wb83Qt3RD4q/PjMiTtXivVlJALN/h8rM0YZ+xVCaccT6q4mS17sGZiMqO6pXaYkyMwG/O3ekhuJhs9uYRtgJvVfAmK8ifN6z3sKwe68pg8jvmC4jUOE08LLJXi/YVtM5hUx/APr2a6BAvHyQsebyMoSQTAF33gbFpREI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757396395; c=relaxed/simple;
	bh=hUXcPhmLqDvDKSGE/lqHoKmeU/iRyCINpMTACfN5l9A=;
	h=To:Subject:From:Message-Id:Date; b=GXMB83nna57XonV2L0svlTcBAdnqMw89ctZIScEnsusWPbqEE/5wgwMcTiVx7ED26Eq/wH+2a7bujsPvRZRg5sTT4H7BKcxthBn6Q/sAcc+7S8GMK7CruKJZPg8Qh5zFutBNVfM9pgsEuZyoGic6zglJEkuacSMcbnjfo+3C6ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFRxfR9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFRxfR9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFDC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757396393;
	bh=hUXcPhmLqDvDKSGE/lqHoKmeU/iRyCINpMTACfN5l9A=;
	h=To:Subject:From:Date:From;
	b=fFRxfR9fvieFxa6xjq6RkdFVvtcZZznkQjUv6FkhtAQWTd2SZ/ceEBB/pMnJkgW1o
	 8HHad6IMd/QixcBaAaG8A+4iMCbYXpXuFz1Y9cnFTqSI+yWTgUXY51f0aiEjwGygvX
	 Fx9sOlhlfrKex7OCC6UqqAGMZ8JtIm6gtHGgeTMmiOiMj2tp2aZz1t5l7gfIPj7hL7
	 /kpgIlzCdoNC+YEg5nCgvBJvhmLZ8BHay3prlm4ZxazgR2By4F7cL0P6CxwA+YZzMU
	 rp9M/7BIvtUhibcO8AnYkJQrxLLrr73NoLVlYFXG+xt9HLxZAsm7EZymXwsuhteh68
	 ibfzH+mPJnBVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C5CAC585
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739639357.18976.8937882475933063779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e38626312cce9ac3dfaa3d70932265dfb0ff1dad9c7cd3f119ff0989683fab
Date: Tue, 09 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757396393
