Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6052538C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713669023; cv=none; b=QD9ZsCH2IvGDSqbAPLXCgqrVS+fG4D3TVXoZwWmMMnjsS0rg3rFN6ioP9raJ5bUfDOZrUIq5D1dmiPpKPUDyyLDgGZ9uTPKA+gFQiItYJpnD9C+nPhUcFpZc4IopSeneDWo1v4MgjYjDWaqJk3MNtmV+R0TSr//iz7pFfCpOgAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713669023; c=relaxed/simple;
	bh=Tzzg7YVu9XtfvMG4U1JV11c2wP3Fhl8CRV5BCatlwdc=;
	h=To:Subject:From:Message-Id:Date; b=nvu2c0Y5VUIOeg9bkIqQD1u75tNbyZ6PDw8Zkb3eonAK92VMGebGGJzMTtv6AH5bMIdxD9UlRZnDoBPk+FecpWHi57bU5olo9jBsFqszeAUHzGKdSw1bp/Wdbi8bEnER3cX9uGFCgHKI9S6Il6QVzpN58cBiG7BniBbWe4Uxt7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8Fr4QuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8Fr4QuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05E1C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713669022;
	bh=Tzzg7YVu9XtfvMG4U1JV11c2wP3Fhl8CRV5BCatlwdc=;
	h=To:Subject:From:Date:From;
	b=E8Fr4QuRQCMvqLEIVM/UQxO7yLAluAZO9mN8AFbxIgLLtZdx05uDGboPbG8Pc+Ulk
	 GhAyxOmF4HhBhgLd+7JV4cQyTwMbsfRoNnuoXTVQjYwvy2RMUiNMNF5KNhcPldO8Q/
	 jknBO0eAKiUJCqCjgk7Yd8ucYx46LydZdSI0KjjTBtJYP3i/akAqU/qQ9eEl9ISByV
	 h44Vccf5Nl8wjQ4eM4QSXzDxyuYVY6Xv9mWIrXsraIbOo6HkEpII4fFQeT4AoaD7FZ
	 GbnXRxzOJtwiPYDlSMos8Mm0GdOSX2aRe07jZ+8HyM9ooqeJifSdhrxcDTC3LEWVgE
	 Q98pPeTcdRRzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E09C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366902277.2754.17273757299000070806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e970d47257ae43fc67aba44d5732e17c86a82f5200c305234e29781a7ba8e3
Date: Sun, 21 Apr 2024 03:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713669022
