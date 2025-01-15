Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32753156F57
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736976954; cv=none; b=jzke8lzvzonj546mkss44/S5mMajaod8EnvgCf6JI+N3YTH5dT0z3nvsGZbQBhVQsyHH6uN3v3ZhOg/cOg64EM2KbJ37QQxNeIYW9XzOfnc+LDsgXW+MXLbq8BameV5gHmGbxn82vHomNBwWNF6nZpfY3B9PiRJ3czbX1Jmq7nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736976954; c=relaxed/simple;
	bh=bJIiAo/fCpKPPIuqk+akzAP8pDT4/mHQcDtWtkvZ40A=;
	h=To:Subject:From:Message-Id:Date; b=YFmEElBRKSNNvR+xBXDhgNdUkFoBMoyRoXtXlOLRK0Uet4RHuvrP6E6365SlkkREx0lQ4CDmsmo+/DWfjHItl2A/Jqdl5x0GVHCqLOOUXHSvfo9yWvT4qSsXC2z4VYqg6fAVsOgtwKgPbD1DjXZfvoHMy0hlIS/xppcgoZnkOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN4o4FM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN4o4FM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC002C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736976953;
	bh=bJIiAo/fCpKPPIuqk+akzAP8pDT4/mHQcDtWtkvZ40A=;
	h=To:Subject:From:Date:From;
	b=uN4o4FM5UJOQcKXiItpE36sAZuU5oJT42FaWiPXt8laJ2mdm1XF7AaaImuRChPd4G
	 jTvT6iwF1ihfEWsdX7Q5Odc/qvHhYhJw8M8zH2Dp4U9v6TrEEKe38FUOGWmAeEUkEQ
	 ZgmkoglD/PmkkvfPKz5+cI7Cu3EFv2mlu/RnS0Aqroc2JuZp9xKYhkQaA43NvmPkvb
	 nv0Muth9yLiVow8jEO8/rOrO1EU30qn7lLeWZzGNmXFOSpx/YiLepAfHhQWjDxa6sp
	 d/T5RzLK6YVoPbTkH5bVHrCtGpb3gxmJtgk9IWHNMRhXTo0PV9iOyTeVgM2I4i/5lM
	 z3a2I0YjoBX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982A3C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697695361.26641.8973328456947246827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dfd661c62fe1606efee0b782d1b285861a143dd313b52bf94db8419c2b2eb8
Date: Wed, 15 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736976953
