Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AFD33ADB9
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770528834; cv=none; b=ixZW6Qr7DOyKmLJVkOC1rCSzqPsOWhOLOyf17G0mtJCq6rWJ1RxQeo5AWrFVzs2sGxBgcvLaos9mIf+zJdPNvojDaDCmzyQmxhWYulsM+kWowUJuEWH8daOmjaB/OiN/ElbFie/10Vw4+QJDFxl+hEKQeH1e/rR3L/yf/fr02cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770528834; c=relaxed/simple;
	bh=GqJpZF/MI6il2QIYu7IZRb17t2OKsl7WecGb1FD4H+E=;
	h=To:Subject:From:Message-Id:Date; b=DFxC4bkV/eojiFH8tkS7OcOuYOogYdYdovgzOoo+WRdPSHkw79rtyDQkH2AdI1ieoZ2UpuFBUC1JIuLgaSp4x/EzLKtF7X8muVK/fATpl1FRo3EUq6UjGRMl2UXVH5FTCmGCOqilrvsDAxKaK3yiIugoHwUdIQna/OkqpgZ5+mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmVwmuKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmVwmuKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B09C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770528833;
	bh=GqJpZF/MI6il2QIYu7IZRb17t2OKsl7WecGb1FD4H+E=;
	h=To:Subject:From:Date:From;
	b=LmVwmuKksyH+dWW4meeVINtkBVfF8skhQ4519iUHZDVSKUPptWEQ/P4CoDl1hSgel
	 fAKlJEQqxN2zaaB3HBo/f6E9oCHYDJiMungY7NesFX2xafEkiBwPdi+N4RVKNcplG7
	 xey1IAQBO6Q7o/sP2gfYgOR19mW5OSJeK/5IoNUfJp85KlsGl+CKKHS33A2BMp/5fh
	 bDizLww2IyVRJs2ZiOzVW3apoOPK2nfvEwfVJJaPjxoBZSuDMQqmZc4PlMnNRhaFHP
	 SUJTVGezApTqVIuCbNEjg3SfszT/2O0CTH/nOhXX+Y/HqQcp7eJzZCU4FTRtY7Y9iA
	 kIEfwyAtCAKMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB95EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052883358.5754.7152533670856090038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2b1811308ec43b96ba1929b6f4631c3cb55c6beca32b185048f382a9b47694
Date: Sun, 08 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770528833
