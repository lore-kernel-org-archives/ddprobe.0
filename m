Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C963EADB
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718434703; cv=none; b=JFnefitab6AjhVHKtAJF7qVzDyCNg9vV1hOPyx0IYWBb+Agf3H/azxp7pv5k9pm1YFeMc28U3zBRONjZ2SYNOS/wNzGkVu9KeKc8QSu+iYUPYk+Y1Jk6x/bIk6UOkN/Ks+DGW0BcJcATZq89tzClOdUqvD4JKLrd380abXyfHQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718434703; c=relaxed/simple;
	bh=lauJJNz2stVc+j/ZHiPfzSXiZyTJ1OpgA3MZVdh5rBw=;
	h=To:Subject:From:Message-Id:Date; b=tuQRP7RcC1GV5WrHccQMg5/+sskZY5tEXxlWIcDd6kcrYKb3+xwMCZLVRhS5XJcexTTCl+uyfe++xENw6R8xwm15YBEn1Lmq7Te4RBWVYlDCWNhT0z4Pe9GljFACnin3UqtlTBKIa14s45x+woLemKo9UfjQfqAU0lKZNgEdAg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubr6GlRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubr6GlRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA637C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718434703;
	bh=lauJJNz2stVc+j/ZHiPfzSXiZyTJ1OpgA3MZVdh5rBw=;
	h=To:Subject:From:Date:From;
	b=ubr6GlRqdpPN2rA2rqaLLCI4gvehrNQXGQt2PjaFupcgfmmrIKRIu3DuSi0V9tBWi
	 h8exqiU8raO4MbGF4eebuyoNAkq7aKdHYD5GK6CVMFaBuOAhf0JfkVA1IUKFOwzJ88
	 1vjZvSnvTMKfIfW0UAS1CKFQ+DRuVQIIEQ2rzPMAjUb+TIjs08FvdfvTiQ7zLXlksp
	 MmLD8wOmbwQMLJukLMwkqvyQ9VGwoUzfpZ5WOoMfZHM8spNZqyqDlH2sU11mRRYsHV
	 oRJXDKgByszpGwdxFnEQ/BRFwhLr12CEZhiBKz5wur188GFbz/V4Izf4aEBWMihazm
	 kV6Dpb10eb/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B47C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843470280.25637.6905203846911696917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dd2180644f503b9801a7017514778698d87fe64aa2f54319cda7be78eda3b4
Date: Sat, 15 Jun 2024 06:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718434702
