Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449693F411B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788991235; cv=none; b=SyLAD9bBg7MHylAU1L+furOOOD4HtmcVujPw+xIwMFxpn8r3E0O7m9NBNX5Bpr/VNb6k5idKLxxZeiAon8fl/XexlnNQY1uGdcrITWvnBqW5GfZfcvxnX6hGN3HADow4+9JVy14M1P/z6Y7vJb0vnjSQ5yCl0W92rx2ohUTODnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788991235; c=relaxed/simple;
	bh=HbLTOSOehkfIroXZvjFSIfQfAi1pxGlrtk8OGftgk0k=;
	h=To:Subject:From:Message-Id:Date; b=T9wcM4bjVSlxBLRtBzKk8vz0AUGQo5l0li3pBwRXkZ+A3dme1sEe+2sFDyRgjwdRhbWxRCZ4OXXJ8l4a+vdy2lbLHazCTdaQ73rI1kd4YAK6N6+uhgsVFbKxjuX48x2l7pADyxAChUTG13vNHn4zjauLTHOdOmmDGtPhMLg2sXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/qHtSTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/qHtSTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB65C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788991233;
	bh=HbLTOSOehkfIroXZvjFSIfQfAi1pxGlrtk8OGftgk0k=;
	h=To:Subject:From:Date:From;
	b=H/qHtSTM1JzEzD8htf+/guuTiKNiZKf1J9mpX8PAhD80c34BHbdjwEHDIOAq+HwVL
	 EwxXcIXVd+t9l+FCZu4BMRZGAgti3CEBMLRvptlW8z69SjM9tmHaOusSHo99Ved5Gd
	 UbKRMVzjlx4eSiEtM2mUl5zvOAe5DLiUjpqE3NPedV5H0pDdvsSkKOhrZnHr09GrVI
	 RY+rvaUyFt/teVt9jdk1G20EVq+4O5ykbnxJUF4vl29hkLV4L/VEmfcBjWfOMKMVvj
	 U3pu3ye+QfSJYW2nRpEEj/LFcuqLBfkgiFXQGMm2pxuzV5AEOhvndJ87YG8dYyMTJt
	 QmOvxdTqcUGSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0856C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899123371.2829.15570319960539258116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40026ab5d72aebd5616a2f19192e422cefc43341741dc74172302cd2d84fb469
Date: Wed, 09 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788991233
