Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809E82DBF75
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787396434; cv=none; b=To0oR7JCq3KM4EUotaMnqlEuos35l8y/wGDMAefsqyD0oSS6lF68fY8w73zcjRys95oghYX3C2RJk7YK/XdN2w7Vu8Dc1qhkyC3v536ABiIJxSNGFhFlyoaIfVe2EoCnw24xFoKcS7jzu7CRFGtUiGAvSCoKs8BNRsPlvtrPsiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787396434; c=relaxed/simple;
	bh=fy5EOT9awcDv2Jg0y29v5R2PZJpirSqMqQZbTd9mHpw=;
	h=To:Subject:From:Message-Id:Date; b=HDO2plWriHu5m3vtH8d7Zq+F4fR4UJ1I4qK/Nv9/pQnMh9uro5D9UaQAXBBTqfaJAX9MJo59UOIDwIUCedi9EXV+HSBlwZLbQCVyZMrytAGnhd970CUbn4Lk+2jI6LbVcVjKLNbNd2XvcOzuc4fd6MDTKzZo3UmE9RGRaw60pjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGd6dfvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGd6dfvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0714C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787396433;
	bh=fy5EOT9awcDv2Jg0y29v5R2PZJpirSqMqQZbTd9mHpw=;
	h=To:Subject:From:Date:From;
	b=XGd6dfvnzKZ7bpsBjpf8irL2xdp2iAbwcX68vvNaesztIoeqOkEOlY+Ky6K1EtjmO
	 1aXdbcjC+X7ezYIhVEf8SE2ZHiZtLfAj9JvVMllsZbgViDZ+7VPHccMOoCbFSfCLcG
	 0cz7CVXtqsK2Bj+gZduSDLtZ0PiUcTKU5AcYXwzyQugywORDkBAZ1uFari1PlJry/3
	 r/tIVjR06E3ZbEYjzn4W18xQvLPC/ySI2p9TXJawEqIACg5jyYUV4lx7qL+YXWJAU5
	 MXmGOci1gDP4gevUkYgjLZ9J2X3Xa2ULCzoCCnIGJOhty0ccfjChCEMa7EwlqYK2uK
	 di6S68oiZ5Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A9C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739643368.18722.8953711500548734459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e54d96ca60452e613029fb68350b2b0ec03f8065ec040c8bb57bd8500ae3d0
Date: Sat, 22 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787396433
