Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB72E716C
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754999994; cv=none; b=Vg+YqUY30Hd8lLwT9yhqL2oUv3AgdBAOs5q+uU6DZkcHPl1Fdw5Vu2b+tyxGs35JkQ6Ct3v9lqD7pCvoG1pD8PYqSuMEskBJ7dFvUTdVCUlzlKraZL5tRPXJqwvfEu41WVOFxUmk/HQDqt96C3fGQ4RajF5imvkKYrUBfTI2Svc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754999994; c=relaxed/simple;
	bh=Xm6tTd5pDq1q+sMhao8M2bwkwfKA9DcZ/W7FK/y7ZNI=;
	h=To:Subject:From:Message-Id:Date; b=OPmUfbXtlQ5jDaotKZ/r41vHslD/nc6H+6bmpRzyizAa31mByZ5TtfLouq80o/1IGiPGLJbmdrOWtPVpCwvEdB1R55h5cz8/Ohb3c5DiAoxeiECE9wM8S0InYa5lzUACtxAF/OqaiyGFpayrMcNb4C7blV5RHQmhLwOTW6nKAvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HePYkqkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HePYkqkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB3C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754999993;
	bh=Xm6tTd5pDq1q+sMhao8M2bwkwfKA9DcZ/W7FK/y7ZNI=;
	h=To:Subject:From:Date:From;
	b=HePYkqkTUG2eGI8Be0pVnh8baO68Nb3Jdy/FN4/KRIjYpt0yZKV/X/J5OnCibWqtW
	 xmuPNPZlv3lB7heLj7aHuxRaDMPgTkp04g7gw0ViII/ca9uZe0djcN1hxC7Fjeunkq
	 FYIPWQDBlveHpxEaRUg80ULbUrTAZ1jQGnMYIMlP6ZQlXk69jHQ7ErRV3bWrY/kIEM
	 MTQ5uTbex/rxPrNv2KlD5Iaou6NQIBO8YbiLbBn8s/tbu4hpkBA1OtKYFbfZ9qlWKz
	 isuebfX2aZCh47oJWXNZwQkw55gcJirCYKOYYoV+w+hB6fPlh7n7G81IUfuPx8MIU5
	 U+e/6k9DZhsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EA4CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499999362.3567.4756174033810263890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545795a8421243e979ca3b9a1b98a472732d240deaf443f08bde28192a17866e
Date: Tue, 12 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754999993
