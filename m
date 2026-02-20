Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333825FA30
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771622694; cv=none; b=GGQbc3KDAKZUdEqf2jdm8Q44Zrzx797v30xRlO6G/wLtU2aVQfenbsZmdKngV3JXJ0QXMaEmgDLih2NSOQFz71Bf2g9Aa0UKJt3ZSwnBhyzPdG/voSy+RnvwdC4+7up4xjNrSymR0P0DQsAE5Bg0Q8VHUmpFJDS5FgzufWc7Uqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771622694; c=relaxed/simple;
	bh=WMSHaAayU5p8uPvd3wSP9bwhdB6lUPdaQ/W0X0YyudY=;
	h=To:Subject:From:Message-Id:Date; b=pRDfq53oeuErv2aMwRkh4yGcx/11f/IKvTDx6Wl5fj0YL4y7+EqzpMWHgdFksCWXpzAsKl9nOi2+9iqVOQtDec16tfTPeQsOR5ua4sYN+jF0Ek1pugjRz63FvvuFEjjt4K40+udp0dqwco6O12i531FZOlpixLzYEplAx+xHTJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7zqTf2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7zqTf2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC872C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771622693;
	bh=WMSHaAayU5p8uPvd3wSP9bwhdB6lUPdaQ/W0X0YyudY=;
	h=To:Subject:From:Date:From;
	b=R7zqTf2rMXlkqhmJkn4lc5lGw6HXF16eK2tSO0EW2uRUNHJcliTgCRS+yizwwJIcr
	 jhxl4qiEqgjxI1HZUNkC4DNvQ1lKgZWOd56yt7M58daE2IKbukXfQgbxNsdQegijdJ
	 L7vFmxP2sXvguoKIr45E33rFlkxIIth6143PXOFgOeTX+mAW7lbeelK13yvvvlAacW
	 25d3Qo3VB+H4kzNBAxmwQHMD64K/tohXPNBWsMXiV+7MUbuqx9LEEC0iOwmlO54BD3
	 /lAYnk2VMJNV6FJIeBLm/JF6fC9eMYdWF1GPjHBdct1fGAYUj4WrRJPiHF1fAdJaZK
	 XiJhIkWDMxRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B059C5B56B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162269360.24968.17079140481748339490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b405bb6b9941b4b5ad5a6dda104370ad2d54fdf17c6b1006d60e464428539fa9
Date: Fri, 20 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771622693
