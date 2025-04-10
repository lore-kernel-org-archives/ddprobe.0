Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F921AAA1E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744303796; cv=none; b=dPjI5FiPE1IWbh+H9i9BoeDlbKNBrjWny5T6u4cdO/q4QyLmGVxbTVFJCS/h1g7B0ZLNLty35KgLFLaM/33rH8+eDvXIfbKweKzw8BXe4FzGWM1Tji1YrAOUXq8GPvcHtL6v+e97aXcbCg0mSbm+aKru6bS9kd7K85IGARi6Gkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744303796; c=relaxed/simple;
	bh=4P83buTlPy+o6wPuoKU/DUEeMG+kJLHEC9A15HwJDgo=;
	h=To:Subject:From:Message-Id:Date; b=jbgm0T8hpr8Spgjy6XBbe4jGWENCZxn44Whb5fNGKXuzaY4CBMu+7BqyDpVtRhA3fFAhHxdk0fgKqCsv9OI+brK09xmdFB9gX8m2J1r/Vy/GkvHZ8i03DSCdN9aMQNB63UdzfXS8HgA3JD3j2O4UCPvbsFaQyfdCMmXfPv/IitE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9gxIJEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9gxIJEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31E8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744303793;
	bh=4P83buTlPy+o6wPuoKU/DUEeMG+kJLHEC9A15HwJDgo=;
	h=To:Subject:From:Date:From;
	b=R9gxIJEpvvCaZwwS5LdDdhzCzp5cDVTlOg8KX2ME25CTlEY0OHIgSjPJ19qtJ/E+v
	 YtvNrFO8WpxrcbaLHtE7TGyuHBnOhBZ5eucWTyVWgmaKgorASo0OIRIDQmKl1uG8wi
	 3va5tQdZDHEWDvK7HK23bYzEE2SH19bMjUM2y1HL01JQjUuBgxEPs9szMRh30ucOg9
	 +I6sNUY8RnL9ZNHWVg08NscqdORAiGaFqfcr40CcIWpzmLvg4I9EuDwk+adBbkSLUP
	 18XlYDsxvG5+9UAONUIn0fO2wGtH1dxQTjAGT/TMM9yH31bTaGNgXbw36KSRNCpb5m
	 JFgwLOYO6vDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E367C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430379363.13898.15954312055465684635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1fc9df01331fb0b53bddd77544cb9d15bd4388afe29c419dcee0ea1a79b221
Date: Thu, 10 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744303793
