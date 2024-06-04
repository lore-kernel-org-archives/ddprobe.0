Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EBF13E88B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717543583; cv=none; b=bghqzK+eLl/hAUtU8fyu6GWN4r0U7aZTJ6XIARmuyaNLlnL0UgdrzYE98vaUqfq/ab5NFWbBSP5pSQzkfO8w8I2dxsaVsVkxQ/ijfcq3DLyW3QYtvoVsdqk0lgZvznHvXBFIDj3osgdWESwBILRI1k4UW4qEELOiRCDDczjvIgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717543583; c=relaxed/simple;
	bh=mTe1AZohlSEjs6CQgVCZ1f9v/H+s+vcbvr7PCgrPTYw=;
	h=To:Subject:From:Message-Id:Date; b=Yt4RfTKIyQqlh1TOygZFdLCQU1kMoaLAkLssr1MWao9pKVyTUzt6BO6DeIke6AILvklDfe4uNrGKyMvh2I/ulF5UsLa6SOU95fJeCUNY0Ct9/aMGZfiZpyZH1cF/A6TErnQXvitNgzLY8UC2OFZOmiCDLsR7s3pPVw56OhDEWR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5YOSm07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5YOSm07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA087C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717543582;
	bh=mTe1AZohlSEjs6CQgVCZ1f9v/H+s+vcbvr7PCgrPTYw=;
	h=To:Subject:From:Date:From;
	b=u5YOSm07a9WEFy8Y9Q7j57bbn3AzRetMKHXOBFzrftA9lmSJ57Rq3ewRlUk0L6HL9
	 Rk5+JX6ai0FpdmrXrdSRiWSP5ktGJaisKBh+98uBYI63VEM+vaA0TsN2GKz8pNJmk/
	 Scj3BuGLkSaKFyXGyOM9v2lccmxEOHlFl4pXJswTFp6zaF8S6Zw1zNBWybYrDvpKtE
	 FhzlsUGJPuWY59n3XhlG0YTGlplrv1bfibUBqBz8YxAhUCiB40yPW2DZlY4kLQCDy5
	 1BEVC/k3ZK6yLUncaReQ2z6Mu4uyVXPYX+n0ZSf67PYBRS3O3q3u19Xx9/V1gObAO3
	 u7Xapm4jotq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C419EC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754358277.8692.9678136774921852865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09bc893bee91c41fe0e05a02b3d67973fc97242abc8980ddf009a5703e0767cc
Date: Tue, 04 Jun 2024 23:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717543582
