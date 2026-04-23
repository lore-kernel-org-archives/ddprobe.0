Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244BF348469
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776941854; cv=none; b=Duqz0FHqjZT4miiqjVG/uWphNSCOOfNECEVn8RX1WUA7yZRZKnue2tjEpp79v6GcAwYoi41mt5aq/c4Wq+Jncsc8M4GAgxG76An7ZOHmCRUfV/vOFyAULMJ06dPvLKDdZzjf1QzwpziwSPUbYNNbDuBDsXcTSBNRW6dAZbmsFpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776941854; c=relaxed/simple;
	bh=bGQxsxDrFliiFvgbNaFPdG8iVKJI2OG6xpN6Aoo/M6A=;
	h=To:Subject:From:Message-Id:Date; b=vFOFZrkertMD+lZjyI2bgrD39306jIFcWLOUDnO6+I6ms0ANKCYGLjS3OhMrS/xxL3duTxWBx5f95G7FUiMGfQv7qH966jyB3mLWTPCzAIW2Z2JayxUi6Wuro6XwXnkXP0Kn6VCm4JvtGhX58BBCMtON7/ifVsxTPL+98q8OG3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjxveZPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjxveZPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82D6C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776941853;
	bh=bGQxsxDrFliiFvgbNaFPdG8iVKJI2OG6xpN6Aoo/M6A=;
	h=To:Subject:From:Date:From;
	b=NjxveZPFkxdPJ6S4YKEh+pHD+sFeUgjDPkJUvm+aKJkkaKweVB/qzDdL/yQRAN4gq
	 Ib+myOjBVlnjXAEZUNNuH4OCwGXsKeP+YS3uJUFJss3LDDSrWeRB4nX9ygzJbVEaue
	 CBfHXYHREcbHlq+Ox5xv/PfSnuXnB7U8psG2iN7ZkqEWfaV4dKqbtHki6xlDKijD9F
	 YIxKfHS/+zE9+840YkLIwsXt/QkadY5/V9mjjQxByDjIYhYBFZKomvQXQszA7xJroD
	 d2wLmoJDMoCBVD7azYevWP3V2QN+P3gbeldliJ6qeIWmZqb/iB1VoBRjGB0J0CAwd6
	 655wxVBOqAUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA375F9936C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694185368.16728.4267020067994248336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaafdbe1626c6197af9de98557e8d4565a0c3519dced0d99ed72c6bc1eb750e
Date: Thu, 23 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776941853
