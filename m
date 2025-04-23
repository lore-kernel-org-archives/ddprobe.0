Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348E7139566
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745441994; cv=none; b=b3glV3YNgFHkHWQLGc1mIrRqCmW6sW92+fpkG7QHG1Sai/9T+H8WfSnlZ/UUEeXWbmMPC5bg85/tCcZ05+cWTQmg/t/U4X+M13c6Gso0XeFVM3viRk0qOw3aq382KPs7RtfSn1P0ziLKyy2XtzgBFqtwSvL1JHqAPD2cDOc2Vzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745441994; c=relaxed/simple;
	bh=rdmJRCnApkZP2eiGNkFPttqV7+CHuGGxPE4jzyO4fcw=;
	h=To:Subject:From:Message-Id:Date; b=oQGTiFrDyttj0ISn2ckKvC3fW8l+ATseWjS5zWBa4VvUVOSgKWpQVbgYrqblhJFKc+1NskRgRFFUf5RHkEKWaznwRGsRTiWz1J/lMe3FOr5hj74JR5IhPydAcRfAS1jz0TW6wMOOIIE9NiiMoa/qg5NpirLqUPdEq/FNpjKTO4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1jjBRUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1jjBRUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745441993;
	bh=rdmJRCnApkZP2eiGNkFPttqV7+CHuGGxPE4jzyO4fcw=;
	h=To:Subject:From:Date:From;
	b=m1jjBRUp6EieEJJQESfi0pOTrNxSs1m5mXEBzBBRc9Xa9ntPxVbXIm3Z41490V6b6
	 Y3HA1hjXZvhuscT7vjQcaM0NooJB6fENTNEr0vZPUybM1GAKrr0VTGOWaIM1xAyNX7
	 MAk3nDvP544XykzdvClJfDXLvdV9086mltZKCy+dHaiDkyVwCsTo4I2vJQFbZgebOE
	 Nxeio8WUwAkZeh3mNud/ssabVeoEZGJe8TT4R8jbY6i2appuhrwljyhUpsq6mQ27Kz
	 caSCkNiA12ew1ctx6m7dAKhL36WheGuyMIhgMQTKU6FApgrkGEAEFOYEZEcqg9WEpg
	 /FXsHr3EWY11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B66C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544199358.32591.6957501789696069574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729ecc1e7eba16152b524f21779eee1f39b2c3350afc25f00c5631a7b1818d9e
Date: Wed, 23 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745441993
