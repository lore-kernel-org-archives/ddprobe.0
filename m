Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4933A2C0296
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783229914; cv=none; b=O9/Dl/Ys1mANmGFTaK6GWfKO+W3RUnJRrOZSLD8aioqRUZFOydpayz9egZb/D98Em5z17+n0WbEpdx787rQqBScHQqPmlmTwQ+bXLME/ucVLEmwxfgFVdd1uHrzPey9axXF+8libkpR7qLqSxetyyGX9SEcJRWplwx/jFI/xcwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783229914; c=relaxed/simple;
	bh=r83YAjIySaFVZJRZiBdJhiKzQGNLMJFduZBBsuaGYCw=;
	h=To:Subject:From:Message-Id:Date; b=qvpqAK1i8Stq2IvYHSvKprKq6mCcfjClcBvhMmAdPTKeW1PaEXkkWIOLdu4hX2kSq1GitRqhZzDifx1r3mMKXlvXUVrwe5h1BnZG3WzvrPbHvDnigA+e7J4aIqnBmZtJfX4DT2yA8F8CZrXmYlpiH8IsMQxEud6pvOjIi6O+MFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6CrkHaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6CrkHaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E33C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783229913;
	bh=r83YAjIySaFVZJRZiBdJhiKzQGNLMJFduZBBsuaGYCw=;
	h=To:Subject:From:Date:From;
	b=f6CrkHaEQSHK6zKCrgzT8hsAaogkkbuM4GIMjcrL35Yn5yMsBUnAg8qPAGlYfcIW6
	 EfcrzADM1bA3EP5SIQX4MVzUU6sWW3dS77PnmTWxabsACWA/zm1ZS3OhM1WHH2lKdh
	 SjkTqqFM+B/5iaBC+FrEXpwQ85mJu3gykxl9iA9wyjR8eb6ynNSNSylipaZQWcdmKD
	 HVhK8xggKWpMryEQRH5jjZCWcfnmXTJTLypOguWGJD0EmCMQjGz2jExdjCUpOcWm4d
	 OfSXWfcxSEiZulYqcxJS9xVgpP5dRdnbqAM7G6AS/qHpldUiKlKomjB0fb/5PjIWeS
	 8k8Rn7Fxf9A6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C4CC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322991368.15981.14365743159497022972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fcffa59ee081520f9a708b44a9971ceef52bc52907928a3a8c13a111364d96
Date: Sun, 05 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783229913
