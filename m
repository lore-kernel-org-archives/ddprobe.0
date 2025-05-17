Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C48F2C9A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747465194; cv=none; b=m+Uw8Qa5G2pIKYDjZC66W2oqXnZ15oPjB/XJ540crQ2HvvhsL1mUbzgJgz2GSoBo6hQwOCvH1ZDCMsiAnE2uNdNZJrAD1i2oytfb4L8zodMUflCzXVNLLFd83/g8qt1piIzYf5SCIS/yP2o63NpU4r9/iHawa14LBXaf+Dg6L+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747465194; c=relaxed/simple;
	bh=ZWbGJ0GOQ7Db79EZhHkei2+hmm94JnP0vnaVwv+qGlQ=;
	h=To:Subject:From:Message-Id:Date; b=Z1o7Jtmo3idTR6VzvpaRqi50eXkVilRtC8ftRQmtjR9jj1VtAQk4b6BKINuEfo/EBx8eyUdtziEw6Fr6oqR6pWlzNXBrCUHKzF4sHSWeMFuAMXJWyQ5aqMA0e0M6IHoToJWtRbBeRiKXvr81dCfB5WBoZmPerTDJbuQgNs04Sto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHPf+s6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHPf+s6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747465193;
	bh=ZWbGJ0GOQ7Db79EZhHkei2+hmm94JnP0vnaVwv+qGlQ=;
	h=To:Subject:From:Date:From;
	b=FHPf+s6zUDDAFE+TJBxNNVj9uWd+tnhe9BbAut1vrU1R0EGJ9Bm9pO5LusvWEgKYm
	 wo9LEJzkvbGUsAhMh9aWP7E12f5BH8g7vB4kh6xIT6GnsjvEzhfp+Ew7LyiODrq+Nz
	 yXZX9ldSKZUjp1w0Hs8GsLG7LgZVZ34NWVPmdUMdpxEfNaiJ/DvqCkjCfsOtZjgdL1
	 JyBw0zDMC3L4ezunBanT8oc3UEZhJGfRFGarksshvMktp3krLApTTQS9CmPTJohG0A
	 /JFTUyNTtiIlJYc6J7I0TaofdC5pd6PV31b51D5/E0rVrrOZiyJHmIXALSFGZMultV
	 DZVbN9/PYVjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B8C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746519357.1861.5447780735631508973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb127e3f3307e3320af60d7368764fc136d05b129289f9c082c14070f2bd354
Date: Sat, 17 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747465193
