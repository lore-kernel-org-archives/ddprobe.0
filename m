Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2139928E0F
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932794; cv=none; b=LDTZHFG7b/GNw/MDDe+k3UqyJykufj0rIUKxStfuDCrds+XZJNOyM4odF2og93Kwe6MdRy9NXiaTgUQH1Fuu5y8kG+aFY0yoF11Gc9dNbWkvAthxCQyWjUAek5MJhRFBZj/FrMwxGYtq4Am2BLSSdR8RoahJJdS13kr0ZC7oNZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932794; c=relaxed/simple;
	bh=oqtHBgVCtHp6QbMjAa9mFYoX63f2CoXBYvtPtkbs/5I=;
	h=To:Subject:From:Message-Id:Date; b=vE/oHLGeKr5EV8B/e9hM/Z8k1gFRbF05VqIEjxmlVUp3AMqfUG3oGnhQh6or1dAfCZS8seWudhccdKnfmpTQN78pL3wbu9RRQS7hb/XOvYBEtcRDt+yL08sJ5NOmuk7EojmNVUNym5eS5FJ0Ya+UKnqPfUG+Y+1L7ZsYkkhcnr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n++gLyoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n++gLyoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745932793;
	bh=oqtHBgVCtHp6QbMjAa9mFYoX63f2CoXBYvtPtkbs/5I=;
	h=To:Subject:From:Date:From;
	b=n++gLyoDzDALsUhU8DDeDKeHSuJdBqyYhoCJs6mvZAiR8itAV9GjeHLy5rr8CK0+1
	 NLrHF7F0AzAqWSHtPDemnHiLBn0fz1cmMEzQSLHDbaM3nje/I0kfkGvnyJ9FJwpEIY
	 6mj0Gn5WD3tOOB5PBkCzzwGukNx7r8Qv7eF4LYrvRoyBm5WD6MHETjssQLRDipUiyw
	 TC4e7AUz/3elKiER+LBL3BneBD0GPDJhXwshi6vdj8zyMvSYbe0v/dbS5vUBgKtJgr
	 ga0QfJmA3Ldzf44ownQoM9Ridgh33H0sK6qrGuTyHW40wwBABRgD6aRhpyLH77MZ+/
	 3luwsqbq94VvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA5C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593279358.15588.4058916228165050783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a483cc863b41b98872f943e34a7be4b1ae01a05720cf5b839d28200a577ed15e
Date: Tue, 29 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745932793
