Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426B0182D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743213594; cv=none; b=SKfCloD2y8JjccVA49ERpxRcqp0stb/pFtYOURbohFhnGf2bG36JUf3qrn/GAcbUhPDVDbLqBQe8DvjG6CGiZR/RgPImOgSkF+HCRxwqyWjvLnLErezhFfNDplxU7xCu94avxjk/Lih+hzK7r1jxEi9e1DNJn3FapL01mxg/6TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743213594; c=relaxed/simple;
	bh=7DnMneZHJZuoDav3tGLtpjH6bqb0QH6oGnWu3eC0F1c=;
	h=To:Subject:From:Message-Id:Date; b=GtJFjaWDMCwcbuSobKpmtg1Eb4HIsX1LN4YK6Zl1DDFa4LVqfLZadIfIvtqj2hF6V4nbEdr0vKRm2KYv0l51kLS2Hmvj1NQCbN0HbPBzIkYHZuAlQll7bQCe2TbJEU03cN2tLaHbOGPbcCrGJHf79PnuQLF9D9R55J0zl6SRk+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYtfKqLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYtfKqLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BD3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743213593;
	bh=7DnMneZHJZuoDav3tGLtpjH6bqb0QH6oGnWu3eC0F1c=;
	h=To:Subject:From:Date:From;
	b=JYtfKqLiJBw0ClobzJhUfCUCOKvdKqi6SxqI7fmHUa8nba7PpAVGzf2XiU8YkXAHL
	 WqkJ1kFhVUGI9b74HaUjKZh3KYmPCGrOHkS23xbuf9Lgu3ztjt1TUFjYWCUUz3Yr92
	 8PpnuVad8D7SKkmznRL7n94zeTeaJnTRHHCjlYqEBOWUdddnjXi4u7Ss0p8vn7nlv4
	 mnXveCE5eawhKCpq+wktXOa98t273wo3R9LIYi76PaaXemX6gwiKikMj7NEbA7fdMa
	 6zfRcMj9W4IUfm2CL8Cd4CPIZUL5WnkFiXmPjbHqcu8ua3lZMTQaTjWlzUPgYLOLuH
	 rbBvo1zQFkDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54BFC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321359363.25499.3583698856771078694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ea80252cc84ba213cdd0405b89225932b76bb3db9d45245df227f3a468f9ad
Date: Sat, 29 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743213593
