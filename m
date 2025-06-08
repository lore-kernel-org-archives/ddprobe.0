Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBDF202996
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749385794; cv=none; b=swhV+UaemcLjT6DNesSKzspYApstz2GVyKhLOxprnDhWXIjLkUfaER4TUQiZcT1ng+uz0H2xIRnLlbsFmtu5pWj8aB0fWrN5iZi3fMB8lmhAFm4dwlM4naJtW59R2lUcE0Y9dqGjTeCDwtT8/aA8UKAfPf+RO6gGxmOb9fSBLqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749385794; c=relaxed/simple;
	bh=j3fDC3PMpg+K0UwWsX+DMhgcC0mMve3Ek8hP+XC8+1Q=;
	h=To:Subject:From:Message-Id:Date; b=Qd3ojxublmqP464x8L8dtBzbaAUKdsvFGBl7WySMsDTQiB15dC/9cJvFK10R2SNZKfZfdQ5HHsb12yqIUJCkJ7kW1J4K+EbzeiO4ynCrQ05MucFvS3AfGkflLJMmD1O54mx7nRcGinuyKyDoVUr+W4cwWcpF0k4v3aor8U06wuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7C+WYqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7C+WYqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC80FC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749385793;
	bh=j3fDC3PMpg+K0UwWsX+DMhgcC0mMve3Ek8hP+XC8+1Q=;
	h=To:Subject:From:Date:From;
	b=H7C+WYqtZlYs+Qv1bjHto8bIJjKy3mZxh6BuI8vy881YTFDGc8lokEQ5GKKD/oLnG
	 ZyapCsiRDk/DxHpFc20RIAKaK3n44gKpTQZKzx18naNRiRvKtR30v/ZSNSkRglx4/j
	 W9qMUGGMgWXKPkG6XlOlMrWHfVM0mpRLNGVKyq+UXJoAuNAw0qiud0pVscjeU9pLEC
	 7MrWIOz1Ho5RS3JydIWVITNvrtC/kChnr3yAQC/rDeSLOiG+S5bUkxqFl5SxPwJzIV
	 mTtTCkQ+8+/EKqRKuP8PUYletU7Ett2lqjZ9sbaXuThwFhxWfaUEaENklPyrIXbFzT
	 ZNtSTgDpqODIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA8C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938579359.25839.4351747742347677024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc0e494b334fdc32d49aa5be01ab6709b3602456639cd628f4d432060a412a9
Date: Sun, 08 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749385793
