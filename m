Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA903603E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776875254; cv=none; b=jS/gxqRO+poD46IuyuFOL/SsJZ9JuPvGsEkwDW6ApxNfdq9EK0oBWvZXSAP0AXBFRzXo0N9GjLHf7vHrlyVgasjfSM/C9wTsFoyOs/XIUudkDH1ZfrBTKNz1sxRahPPBqWrCp/PZ8pbgoovSDKbF4hnuhVfW0WzSb7WJXqbV4bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776875254; c=relaxed/simple;
	bh=jRmQxSlQCEKAw3JzIDBfrgZHgd2OscsWWO6b4y4yjMw=;
	h=To:Subject:From:Message-Id:Date; b=F+K2RY/CxTSuwTWfRcpdtAkND1nAeOg3+sim48JWpe3Jh+4GRi4rOR1pOeLDp+tbtOZBIR84CboVCKDN615Qpg+iGDhrA9JgR/6LXek0oRCG1yXMR/jWEmbaOVeag5OZn+stiPT4C8zJ10wmudj4Tc4dp9pdNOqe7tdDzoSdgdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw+E5IMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw+E5IMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1F8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776875253;
	bh=jRmQxSlQCEKAw3JzIDBfrgZHgd2OscsWWO6b4y4yjMw=;
	h=To:Subject:From:Date:From;
	b=Vw+E5IMU0tjtFsPfxD4GKyhPo1jQ2/1mT7L9J9NfGMVV1hBLLsQXBexxTKr0f2Tyy
	 QFFPxGkvlU6Kx82HWcnB4hCQ8n1rQH9ypWTlc4fBgHfUC5kvh6fTrVG+ofNMooSGF0
	 Cb1VJ5Z0rRIj5ybVHgmljbrLTy8JbFS0A1JdklLUpZYWkQnGpIbNLzY1nuJBCsL6Bs
	 497IQebUfsSODUPfh2gI8BE3YsGXSRMcc/Hq2o9ftZYJ1bc4FQIxci5GZlpEQZWARd
	 ed/WlAW6ol+muF1Xef4Dpl8tIf8HxbnxAcWfPSW7GfBPkfk4sXjtqMX62GVcEibmWG
	 A+Z119EnGRqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC2FA1FD4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687525368.16922.2539846813106796660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed0fc76f99d6b28395e1140b2c38c18ce65509f4544927e936859723117b554
Date: Wed, 22 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776875253
