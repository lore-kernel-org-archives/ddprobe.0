Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE379274B4D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775348733; cv=none; b=uog7PSrnxPJtS+BujLeMnWkE9Fc93LQ4I3+hgBvnO94vFAnUPNy+ol1B1YFCdC7zNWNZnJJxRWS9qkFZkGjWg2vaDhZkhMDtc7yMOAWOnZuAj0C0169rcwe4yKYbimKpeHkWQG4poNp4bYL7cGixeW8jXdXGXA36R+iGvSYjFpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775348733; c=relaxed/simple;
	bh=oJxfk1tBEaViDxrYxqH0wCWLWYZuEKAV7+NMcrX4ixo=;
	h=To:Subject:From:Message-Id:Date; b=m4l7bK2YrntSTaHWmQqQnwjs5VWS09DX40DTlSTuUcqa0M/uPxFlooIbv3zt5wxfBRRYFcr3JfMzralwHTESlMcbzM3mmK47kfux8coDJqA3bPB+RaoXqtm+r1a2qpLBWBkuj4X8Mq0UJjJBDkBGeJzyOFr7uenRpnfzfawm75Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxfpFNqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxfpFNqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D0DC19423
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775348733;
	bh=oJxfk1tBEaViDxrYxqH0wCWLWYZuEKAV7+NMcrX4ixo=;
	h=To:Subject:From:Date:From;
	b=NxfpFNqTytW/YN/wjhdzDEBdTCJSUbE3wj9lwR7hvRts/DDnl15MNypLxmevIQStv
	 X+YuJJa2DmBvWfl1LTdoO8YULMqSta0VAsHGsdvTEKWcBYzWPQj9qu9inxAuEM4tD3
	 /cGepeI1T5uFWYuRLyjga5gfZeJWgaGrXg/OHmA7uGNWd0m9gxPtP7L4ukT+XTZqGG
	 /KS2RnjRZk+LBtV0qz9FNS8FiYepL8lIfzm6ZxbJwMF15tLKvymnFdILcsotoKV5QB
	 ff3POYUOn6AzahsMsyseuyWLcEfEQPJxaFRWa7x92QjM+YOgjf0Ub8Vi2j86Qdt7qZ
	 ZEMsfwP5sMSKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32D0E63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534873369.23195.439955782757417407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96442f690fa060d09a85941350844995700747dcd774a554ff6c1adb97a90430
Date: Sun, 05 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775348733
