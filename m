Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5F8814
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720388783; cv=none; b=otTl9LD+v7EfdzA3mv331zxT3LVSybq6pr3lCWCpcnt8+NQg80efIJrLvMKnq/1YJteR/A+tjiXcmEtx0sdv/eI5IelqhMjNLs+dBjl0fP7CdcUNckJhfNzx+yCQ5Zxst57ZiV8EQg9MAoQ66MFsSTRzA2PWqYlSPotsHMwp+oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720388783; c=relaxed/simple;
	bh=njIse6m1n4N8ZmvGTEOmeYv5sUtpytGY+K2UyLkkblQ=;
	h=To:Subject:From:Message-Id:Date; b=bIEYPgz8WgPDrspXiRe2UdLUeK7tyqxYFDS7Dv5Bx/2QqyIMLTJNxM5jEJ+Bbq1QqIzvJKaBq09YwW2bvD1bRdFE7KTpbyQEzY1dZfYHQEH/6besxY9TWPoe7vBZIxKBABkdw3IzgvIJaKpESyaWQGx8wK3jF6vFAdhxPzLyUpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htl1ZHeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htl1ZHeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7497C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720388782;
	bh=njIse6m1n4N8ZmvGTEOmeYv5sUtpytGY+K2UyLkkblQ=;
	h=To:Subject:From:Date:From;
	b=htl1ZHeBtwRON9sOt6NjFFFEhwo848VfQTvW5Y6vchKBEzSNjYINOdg5Lbaujk4KU
	 fh+jg5fuvukwUhA5KdeNzy+GQXx8FLnqVMwgYvYp2tNq7S6vDHyO8LsAM7IbtiTIjr
	 k3Ay/QLoMf7bw9ZXEp95Swb5OaSG4XrMR+eajUWCftfwGTCmDT/SMyOW7CyLU2P6Uu
	 O7fubMBgPYcJW3o2GjNvERs2r/w4MuLqlaO8634yczSHIDjCG+dXS0oJXYEcjarV9d
	 w8XQDsHCRXPAq4KFM6uNMIfCD3mqBn+y+T7s8efvj2odhcGrY/p68U2Fmy1nfUrS+0
	 82ZK5IbPl3uWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF35AC38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038878276.747.16068364008310334084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2638f1091c050001a6ca7c0414a63f4d3a1f43e332ef62918768e84804e57b
Date: Sun, 07 Jul 2024 21:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720388782
