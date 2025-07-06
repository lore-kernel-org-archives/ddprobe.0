Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3975F946C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751836794; cv=none; b=Wemuxno40jt9Zta2+8PtxRvMWlIVudp/wFosTZ8IXg6wQ2k8e1pVqU06Cp6a1lyvLUzf9qSbJtxIsfVESlPx8B3UJV4wCAfCUl3WeDRZpNcOrwUqHYUojrZVG6GYRaV4yck5uYWKa6+U1B4EPwSjC6Y4jPOdf31fnuqHfra9wc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751836794; c=relaxed/simple;
	bh=Fr8ovL/Jyrnp0W0M6VDGZW76w8zz8IYPPVwsD5ItB1w=;
	h=To:Subject:From:Message-Id:Date; b=ut6Qni62RhZan6LXtrslrCebKGdr9K6QmwxyGkEDsv1tF03LficZn53XJGgLmCIqxwpnbR/Sfa5sFZHtUZociOYsSw431Nkly/q/h1p8WuK7km/4b9dYQf4M2PVWobcVfz8newVFhrCCxXKtlE735JpWWHWb2a04FTiPqyIZV9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4r8ZKLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4r8ZKLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CBC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751836793;
	bh=Fr8ovL/Jyrnp0W0M6VDGZW76w8zz8IYPPVwsD5ItB1w=;
	h=To:Subject:From:Date:From;
	b=P4r8ZKLnB/U63LDFjKAMu53HSunjQev1U9mgYaJKwSqWdqvF4DWW/geHSh/xawPbN
	 Htljr+xIUUFEq2zILhOjHSHsXJH6L71RhEieBPjyyaDcQe8XMbJvGAbjw5CJM47pXT
	 Rf/eo/JQBbuyYjmoJiCX70TCKxmsHenM981GPZL1KFegOwkQQiaDuSZWjlyIUMGweS
	 QYrXyut2dR8qdVPyTnj5Ci3TDqwIEu6pHEdtUBHWvRUETgMo+52AYzJmCzrGMBfbFJ
	 5MXPpcpPG+4WjCLpm545jCKCOy5X+bCyLW3vOKEppNRHXGvH/1gYakx4nWBqmcc8f+
	 ux1OX+5Q01sWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB3C83F09
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183679358.20496.10941688391895409497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61b6444720312dd510208290741b85d95b23f102e163867593f99b336b4b3b0
Date: Sun, 06 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751836793
