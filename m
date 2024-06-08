Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F2BFC18
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717867043; cv=none; b=Zz7o3Xv6FmE2XwUGyPSDq06k7Swcc7aBoSJjjviYO8beUEck7jzHdsCpggBPh0X23ZsDtknkmn7cgAhd6z15USIGerRPDJYpjkLOnvzMG0wmv5+3Xqvy321DcQ+/51uoOjZFsRIxBbev4suqUMhLsINkWfdFbq97dNLJqHWm32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717867043; c=relaxed/simple;
	bh=r4CqljVNypMQ+M0fXqJIlHFznlXkkioRBlR9VfWVJ8A=;
	h=To:Subject:From:Message-Id:Date; b=m9vBUMsJG/UmA8B0FjSv1XYVNN8tVnX/dHDDJS6ihpYQ1thuLgHlHR756RbufINTQKt+edXMHUyMosGGUvSLzqCJQ1rA49Qj+I8GM32unwRfcIaxGAXMDbsnq3uhMsr9qXDRPPndTtqL7fbJJmjUtuNw5UiqgKigtVYQQERaNHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSd9+pIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSd9+pIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02D01C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717867043;
	bh=r4CqljVNypMQ+M0fXqJIlHFznlXkkioRBlR9VfWVJ8A=;
	h=To:Subject:From:Date:From;
	b=LSd9+pIqp/37IL/B/9HSDVrEIa+2qPCOpciOs4wVAHoBOg4Dw5VKqTVMkpCh2JT7B
	 lk3DFGuFFikmS5A/u81Zq2jPWRiECCBaX63gC4y60A/0fPkgy5J44aFeQBLnGRQCH+
	 PUEck8WIC+iR2ZMeeaDHQqTGQFMKr/Mpd3mjq4zO511uj9bBo3erh7com9Nfq6BkWB
	 nGxn6d1iqwpGhOB82OVAOUzzM2aKy8SOncAVrBPSYcJsOEscAu4UdVGw82+1g2FX6I
	 eL+PVFss3rCqQY+U/FPaMGx2N3gpuwXhTsMCu/kBb/SHnQYIYK+rOBVfkVHlBKOr6Z
	 49JXkPWM877gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE032C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786704285.10068.7002142187408909291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0566f2198b3b27025bd70f11b2e7f7c991e7c949a820bec7e49996a420825d44
Date: Sat, 08 Jun 2024 17:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717867042
