Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDA61FBB
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710642497; cv=none; b=geqe7nlM+WHuDKDEiCOiveDqm5SHJAg31g2JRPGwWWa7IxQaoXNkweU9NNGwHlHzMb4ElcA/BH/RWKG4T6Il1rATNO9Ag7oPFk9/8c5uFkAA5v2LaZqO20l+hKoE/qVE1wwmm1uhctARRUBLEpPQyw4euupicJEtvEvyRY4xl9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710642497; c=relaxed/simple;
	bh=bUeb/SHp0FvoqUGTHy2/QDUk379sMEMiBNAKcohhB/Y=;
	h=To:Subject:From:Message-Id:Date; b=UpuuQne4SP2D4jSP+JZi6FYI9/ZRAYV06yt7Ru1f+kwzHawjhO/F9DqBJOtM0ud0cPCFfaWzQ86GMS15tEbKawHLZIb5wrDakQpNpHp4UlvVuLKLBssXPf3anXSVvrJF+Y+UKNTPMqRGz7j0N4rLlU2oXe7gOGjChETzNOS7Bl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/KKMBeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/KKMBeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B9CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710642496;
	bh=bUeb/SHp0FvoqUGTHy2/QDUk379sMEMiBNAKcohhB/Y=;
	h=To:Subject:From:Date:From;
	b=M/KKMBeb5EDkgohiqlPpTp3J/jY62eQtRjAIWCqQgP1Ey07kFN3p0NgbpEy75ZPZ7
	 pPknpEG/TDnhow/ncYFT5j2WJuG7ZWXibWLtDDxCNRgS/2onNzMKyKcYfxI4W0bBDz
	 9s56DWbwafUNvhhapg+MSIkkWdWgXoZiHMxBnk7seHHuT2NkWGAR5W386TGFI7U/Nz
	 Qww4isYdgnjBV71iyyHIQkuPNkEeXaCkHoN+TPuo+Gg2AQN7zytGOKpGo4yRbvPpnX
	 h78CY1KdneleJ/j7RdEosUH2HHG9wTcgqDkLLDOzV67sBcx6XMHFCgg3x251sRxUuh
	 tYqneWMtKQtlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61761C54E5D
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171064249637.7653.9823233143480024234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0e74c809e30e22fd44ff6260f9c9d33c23eaa848bfa059a9a0d752e87dd1cb
Date: Sun, 17 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710642496
