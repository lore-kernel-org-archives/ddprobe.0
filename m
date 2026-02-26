Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6DE288C96
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772112293; cv=none; b=II5QU2CcHeJrpymAwl9RY0zNmddVhs9zHvhoIB459LGdAwYdwgSRk7bOuve51lXUzCSKJHSORh6wS20wyV5dGWlYFE4hMmSFspN8rXTq7adJGXSJQWrk/UOu7nChmU9ndcDJK23y/QRUT5YJWDj7nBtEAN3T/rLfrUywAvtA+yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772112293; c=relaxed/simple;
	bh=BK1jieGuXN990MJPkZmU6TzAzq/A1GbVpUIjPyqkMjk=;
	h=To:Subject:From:Message-Id:Date; b=oS3c7mza2ss9Qg3hZoC14NnqNJpib9WSVgCHX8Q1TF/ZHK/IpSaZJyfKZdQ3Tn2bIB+0nYfqofFxbdwR7XHiTCWq9GxsjMpS+Ty6dPM8xlkUuQ9Dikk6bOTWiUuQawpct1XaLEsf/BUSRUH5Nq8b8C+/wXB4jCUdIhFUM5wGLeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqLH5WwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqLH5WwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFC4C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772112293;
	bh=BK1jieGuXN990MJPkZmU6TzAzq/A1GbVpUIjPyqkMjk=;
	h=To:Subject:From:Date:From;
	b=fqLH5WwEOrJO5mpkd5NAZM2P71aqNXTuaxekC/Uvzoa7Sy8LRgXF9PIyyLhx1aSRj
	 BSxzGgKppPxYu+/3DA5fIMaAd6HLjmCDJrUKRBd3ThAuQKGbGPnjM+HzWDjNKeuV/D
	 LlF1/S8BaayFjDiKnjVhMnWHrEWx1aeP63j5w8H7POZhX0aLmIsJtnVnFrZH6S6LgK
	 L74PHhpVrK8B5mbWpq9LsylayDJz/L2J1qlS8LKRTXbAVS+CCmDNZNpJIhE4KkWGcB
	 lxFNqDlYoGZp8dOzokxMIIR9ZaIrres/LyFZwz+zuO8bdCRQql3ZNw9+4nDSMXm9FV
	 0fcrjJ/2tF3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99842FCE07B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211229361.30370.12710133497099027597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcbb8acbac322adc29ca22ddf116b90b7583c574f688a08ea9137b29161990c
Date: Thu, 26 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772112293
