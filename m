Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756A81732
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762094394; cv=none; b=ZFC2e3AZiYood45qlZ9J+Wsaedkp9xeVDtS570kZu3L++VXF4QOsxW0ojunFmL2KtGJW0QS/zveUkt7b9pHciLzXEAc3WHyHHDT51dpTomH4Y+x4iaBQlIH3+c5Jb3D49KeQYgIMV1uaV3sbkr4UNQuD9ZB6FlD/HiYeTK2GOYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762094394; c=relaxed/simple;
	bh=Ble0NFrOlTrdp5Fy2fu+SsXeDd1OIjMw5wBBcgtEYk4=;
	h=To:Subject:From:Message-Id:Date; b=IUb3yLoITMyW1nM04xMXigHlsNafx0Am8Syf1DRpK03ypfGYFWTkw0yEzHioNe4nWuZwEkKn5NAjF09CdplDnkjCuNGBM5c1A8qvj2/AYMGcvZyoKTOn06YkHlPGxI4i/d1nC1z49DKbu+Jue6xfyJ92tVBgT7o5cPXSodCMJBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNDVfJNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNDVfJNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAFAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762094393;
	bh=Ble0NFrOlTrdp5Fy2fu+SsXeDd1OIjMw5wBBcgtEYk4=;
	h=To:Subject:From:Date:From;
	b=UNDVfJNcr3wqvcHpYNYta+SyJvTd4zRL+8zG7QNn8kqk9dMFyyiG6LnnNq3OWwMeY
	 zzATr4b/Y0yeo2Es7zdhXT5VbcndXoO4jPNhbPiTsuh525iQ72dJIYvPvXo2SYfP9+
	 xu66SG7JpARar5khuCOVKhw+ul8VzLIQ4auS0Sku3PZeCEmmLeV10PPHJ8gG63e82i
	 RCC0bPsUV70OkJFVZPqETONjbc7z0agEldGG6p6rlFIA49f96sWgHJsy/l8kALNoH6
	 u+VYgLtQiVub8knmxLG3pyciZAangbbCqyC7Oy8nwrrovwUT6nOmeIQz8s3eZBKYiK
	 6YHFPJ8V4z62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A8CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209439359.6327.6791849252485397992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2bd1fb8b47f377a2d57eff471805275e922e0c27b4aff54de66436e39b5bd9
Date: Sun, 02 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762094393
