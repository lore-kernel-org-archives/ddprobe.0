Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F29487BE
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771392894; cv=none; b=C9TLaJzHi4T3FZEom6bdtOuau5/gOJh2R28gZlXvuaqnuS5ikJxqRMRCme+pOKovUPU56wuN4kgFYCflJuukfTy9RboZjmpr6/NLKolFxT1zBIKR5gM1FYzYG4JJxfolh51T0E0a8M5ZIFq9a0t7qA6jHDnKOXaU5AZBTuIRf3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771392894; c=relaxed/simple;
	bh=wZapiFtGJ3XmzMEaP2vbhOeGRljFEimfjSGvFdbBma4=;
	h=To:Subject:From:Message-Id:Date; b=jo+YjfBQ69/sbVsimIntXMfKI7C4yuDaB0giBc1IKbkHfM43KDXSjKD+ykLh6v/B1o1qCgDuPORwtBUQTHgYYb55TAnZOEiZOUEKRmGg77bhjs6nFAoJybDC+L7DhI7PGKTu9A8QS6nQs8j7AlHpkIrYafJtb5cZMpBqgz1StdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYREU5Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYREU5Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329FC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771392893;
	bh=wZapiFtGJ3XmzMEaP2vbhOeGRljFEimfjSGvFdbBma4=;
	h=To:Subject:From:Date:From;
	b=rYREU5Qo72yak1sOKyXH5lbCdJpFIlxVedVWpr+9dEz957PnbtU4EAWg+ejcQaCZR
	 Rr1AeuESbDU+DyQQDDD7Z6Hz9cEoKKNh+s/nK47POtPTd373IUHJIDVJ+EoJROz9VG
	 2H4uxKEDN7UPT7QGg8GnYIojlCgJDUlat9+XmUD7PHL80oNJBBvJKhH1FwKlnrEQu+
	 hOw4wVBFKf3FFUnIFIPJibJBZlCakJwKpr6i+MAMgqvPDx8uz9txGtDs4cYDOH7LT1
	 YBSuEeU5Svjocvps7Am131eJMgJsVfwb+rX1hY+M0Wg60BdpOs2bWvNyCPHUDjBRSc
	 RE/tqzP0IZfIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129AE9A04A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139289358.2632.13635153177266088387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907a947b562a3b915b87d0370123d818a815b80081b42ef408f701c95abae21d
Date: Wed, 18 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771392893
