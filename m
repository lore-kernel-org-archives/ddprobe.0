Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146172652B2
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754836794; cv=none; b=aR3o0AR+qQdw1Q2uaBd8MM6yWKAL6hwtI8rRqdwlwa6AFx2BAPy5/wpdpesjsT4EsFW6OWnCNw7DNBPF0mk2BTBrtku78oU953I3wB1SsGe5dJn8YpRnbMR06oPKmFD2jkNG3e0+cHP4vfboFBCVL9AaQk9YdUaGACksgG9nNBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754836794; c=relaxed/simple;
	bh=EoTf7vvk/EbZoC87MllCXUosw9pwAnzzGgzY8R9RtcI=;
	h=To:Subject:From:Message-Id:Date; b=I0jU/vgdE8YZJpd2UC/xqUqPmo1OTLUTA9hxqFzyoOV453ioxjd0WKGfXMYxjALZOmG+bvR4n4xXFmpuZVeq+YPZW2D1s81P3LhaubctFrqeRFdP/0uWD8JhmUq8PKUKNohBEyUtreup36G8RDay2cjlOUdud3woigm03LvZ0Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6wHoP1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6wHoP1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E29C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754836793;
	bh=EoTf7vvk/EbZoC87MllCXUosw9pwAnzzGgzY8R9RtcI=;
	h=To:Subject:From:Date:From;
	b=H6wHoP1Nh0lQkwlhqKxYyuXDXJ5dIQNJFei/86QZAhk3adb/eSaW65sAF0dRZ0Y0y
	 d8qq+B6bUt59FOEMrkpa6I2PeSSmi2Ct2hKzznfMdPXzF4MXJ42MKi65aQ9TvUi0GU
	 VaK/tb034AxLWegHyn9j7DucC4x2iHOqV4EltMEyFz2irNTkU5Y4UXXqef4NSROhAR
	 y6fOnSvJ+WlKb1li6ffxZRmdlYCM0GcT2NSigpRjpBEFFvabn2z4LI7xF622qE94Gu
	 WEv1ugk3w5Uu2xTl17BPPQjINi1Bm6BBsCKlH1Flk5WmPJSmOTTgGKM/etZbxpnAsC
	 P0/lmUZhjP5Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C3C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483679358.8696.3053578804419843315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24f5fba9b44b3d24f5cc9e94d739d45a8ce8b65fe98f9f223d6417cb439561e
Date: Sun, 10 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754836793
