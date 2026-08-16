Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179A622FDE6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786854034; cv=none; b=iP4iN6L1rm2gyqwnmxujzeKwGh2vpTdywUFTEejzGCvJ93zJkN1/OeBI7S9q8NWehyc3d58UT9bSPb6XjH/2AVSFFZMCfVfREBUyzYY1fqvsoKNcPKgFYoTnQYcUJA/564LVkVKsHxkRaIFkYlVa6MGZ00Bqo6zCkICNUi/VoHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786854034; c=relaxed/simple;
	bh=AXGHuONr8e7Kvt6F2bGiEJNhEfwHZZBcqqsYjMc7FgE=;
	h=To:Subject:From:Message-Id:Date; b=HBK4Ef2LWeB2ENdNlenFYXJgKc/Kj2p+JBgFwR/sreAJGbZVq8LTGZTRX0cjofBolVTIjavtoBB2ux84jtYjoCw8vt4IYdoCZ5H6iAkdDofjENVyYihG2B2a5oLH4144LwS9jKGUgGDSpde8xMIDdxhDoepGtclU0HLoet+1p4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVOcOzIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVOcOzIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56BAC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786854033;
	bh=AXGHuONr8e7Kvt6F2bGiEJNhEfwHZZBcqqsYjMc7FgE=;
	h=To:Subject:From:Date:From;
	b=iVOcOzIS2m8Ef3CeiHsNG+xSW9aH5XsGBIbB2FuDC/wp9R3+7Ix2w5yRtkiEIRd/t
	 c0XhZr2ujhbuKRdkQwfi0D97mOxGj5WkrAobGSnkfBHk2HHWpLeAnTNBS/0QT8P0CH
	 NX3atTY++3T8M/rrowu9Xz9df3LYRwko/OyA9NX4BELu0F8UYzCvHyGb/XMpwC/pp5
	 4fh1H4GKWZ/BgBYJW1JWWMwU+RJzgt14E/bFFT+FeLmzxHyooyvzC5luwqkne5B8pP
	 TdDRrReNnU7x2nEipyTLg2QljnVQnDxU5qP6XRCZNmbXYBnRP4hT/gw7ic1xOWdQz1
	 FOlfTvKCHW3Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFBAC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685403369.27892.13127327680946214386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8592a00723a7bd9d37b0c221722f6e87162c02bd3709ac9b7dda6b5214795727
Date: Sun, 16 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786854033
