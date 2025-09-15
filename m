Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCBB287263
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757976596; cv=none; b=N9mtOGloB+GDdpvZ4Fhq1YuN42ipSuyvH4UUDoh/LJvk/AoHhpZj7vYLi4dfhM59AJFM6dB8Kq1bQn5nU2ZhDci1ko6hLqwZb+chNTpoTXH88ykNLS4FPjkyJsXzT013JnuFFYYwUa5EGsp3nK7u7ywURlZx8NdYsoenqTPIpRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757976596; c=relaxed/simple;
	bh=AechCQNi6BNPsz/tD9hXOowgO91a1IBXHPCjZejDoCE=;
	h=To:Subject:From:Message-Id:Date; b=YV5eUEVnl4nCTrCRGQwRRROc4n/89ub+y58svgaOhxIQCM6kdi3+LZmbtsPcteUwqYaknl3X5lTbCQuL0DevMopazrT3qVW5zxiQrfZfQREUajsHSisMHMfyS8OrAHvcclCVPbQn+pH6q1DHuykEXq9HSSVpl6M4bDHw/yG/p+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA88dV6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA88dV6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757976593;
	bh=AechCQNi6BNPsz/tD9hXOowgO91a1IBXHPCjZejDoCE=;
	h=To:Subject:From:Date:From;
	b=hA88dV6+bu/hdzNYMmwyxMNDmkr3oAX5tm6FJLYBcMSz/Jxfb2OOIdMtWeQUPGURC
	 oOMmg0EPXfXHeUOECbJ+PaI7Hnm/wEkwT2Jme3lgn86k6k0RghxB3+Nwy5NYmYzj7x
	 lam8S9t/UNebaMUHn3+s7iw9UPNqNCvZiYIYoyTqTyb2/BrUUGJwAKetps8kh8PoZm
	 mf1TMasg8SWw/KB9qRiY6SizCeJIq+EKzHOJKeX6PkE4XAeIbnHvQSVh+2zUkjkQBn
	 dyo4qqXaiiX/+WR1iz6HqzBvT5IUkNgmCP1k6BN1solsLy652QPW2yD6d7eU88ZlXr
	 CNU9Ct9zVTRVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C8ACAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175797659358.28939.1039148055260943332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721d4570d74544e3df9cb0e31a0d8328bdb91a11724eb2380bc24084cf529771
Date: Mon, 15 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757976593
