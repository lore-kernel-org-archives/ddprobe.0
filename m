Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014B7D07D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743460794; cv=none; b=D9ZKWfWylY2qZ+f7Dk9MbwGJnWxwQ59WdqKyERM+zJ/3I/l2HH7Q9IrtQcLkKsuuqoVy84QYR2wPxweQL4aZpcJJOVCzXdFH5bTZoDxMpUC73/rBNjs2k5zozeQif44Pk0O2kGXqtryoWYPaeQzlk0fYgLnsOTubXbbrxyoRCj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743460794; c=relaxed/simple;
	bh=9gJ8qgFm5ztT4k4xH5IV3mJFldF3I3DSannNl2XQeG8=;
	h=To:Subject:From:Message-Id:Date; b=b6Jj3H8cl28asiiT+dHkWchMtSN3FyMUjGlACPfseAlBTQO75dth2t4mJLfxl85/3i8onNuCeoUfWavvQ3W8f5J5Lzu1w/sNrI2svQiizxkopk4X4HEJrEUHHCU0Rug3WVz3pihFhVmv+vP7ghrVP7rtvKy4TDqOdz/2dqOzNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tpa1GuBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tpa1GuBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE476C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743460793;
	bh=9gJ8qgFm5ztT4k4xH5IV3mJFldF3I3DSannNl2XQeG8=;
	h=To:Subject:From:Date:From;
	b=Tpa1GuBc3Jf3r71ptWx3eKumDTbsQ+AAnzZpqxnKvFAcXpOrqCcBUdTJWB5G1oN5U
	 Gxv5zKupkhAfb8lbBJa53tb/8k+r8OST0qTtZTD275P4j8tnCVdiPZjtBDYlMl6NXs
	 oOXF+lCHVkQG9c1OvyLIEu3z3Yk4fvsEtJl2qVC0ybo0sdibyUOrbj5kcp44VyyEIL
	 akyB57q91cG7ASvmOygWoRozjbT/EFxjwtmOFOpjzVuAecJ1Y3P43YW5Dnqe8ocxxp
	 7TxTxPBElrHiBUXVIWdTLBQDmoG3TeL9S9td7V59gnFRKhR9yVEG/D/QQ4Dk6mTFCT
	 hkPOxSFd4F2lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C9C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346079359.31850.3982714430671571204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4e51192d15291ed8b35e6b2672ead1a8ddf695901a3bef97d90deb0e061329
Date: Mon, 31 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743460793
