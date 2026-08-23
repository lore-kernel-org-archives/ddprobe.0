Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6879419D89E
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787467834; cv=none; b=GS/p+ClIemYbdMPs3FtYiGDnJBgUiEuKqmR4x9Z0Qgw1zbzRcpm0AwHqfvfzduzgjuEVR0oF+9h/hlNSfVtbOtkxiBaOSgrNiSzq1RlnJXsBwHvpK6HvfpkhsUIYmssysQkiLbrH94kkRP/DqaIOcZ5jAGjFOq/tos6wIU7Zmjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787467834; c=relaxed/simple;
	bh=L3AYrda4Kbq6wZDyCxWhz6/S55eTz9ZmGLr8UcCAl3o=;
	h=To:Subject:From:Message-Id:Date; b=mCG1MHTOQujwZGdfj/U1l2W606yEiyHezQXhc8mcPxYg3vQTylA0eKOkwDz3Fmzr4CqKlxi7jlj0uVxp6SwcoOR25CU8DyBImz0LO+iIGrJtQD/7NnmGNh1oL/RvDtR1+Zp/bfclchyb0fQDl1UmiO9nmqIFoTOgvRPc1bMUm3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Acx5nwtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Acx5nwtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E405AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787467833;
	bh=L3AYrda4Kbq6wZDyCxWhz6/S55eTz9ZmGLr8UcCAl3o=;
	h=To:Subject:From:Date:From;
	b=Acx5nwtWXQARcjk5xfZ6vMQ9P1A05TwGAiY4TVR8tPPWVXxIjL4CiJaLVkxNIAB+c
	 bSQGIai3enh3dy7jB1eLkqCtPJaUdS4meIJBO8W7ONY2Nn3ucBkp9OvIUankID3Az7
	 Sz42/F2Tfz31z6fjE0D+zPXQnWF7mmfwUb5e6BUZBy+juk7x4r4dO6Puyi08zK15tj
	 Tu+morSq45iRZsUOF+w7UlbWN1jOwvSvMWVo/onHEIj+XuT4IyFEVf6w74xA3xzUjs
	 J/9dHAfXsRcg3AB2q0+mPuPGgWHZKyJe4Qju8AL6Yw9D53YO72CDo6Qm6YlkNmvPqC
	 WDAzBjK9aV+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF58CC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746783374.7991.452292872249445440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0464baacd2fbbfa32ec0f4d9f7df0a202b6157324a3dade624f29af7afabd37
Date: Sun, 23 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787467833
