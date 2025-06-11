Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABC28BAB3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749650394; cv=none; b=RnDjLTdsVKPaHTtWcZGoOTfkbDXlEdGhYDZoC+iJHPpd5pW49BmAoke+0mOtFm0tHsP4rO7DqHJlTSsuQOog40FWu6st7v70Id0tpkGpa45XMuHCgDpCadE/QUDwUv26uRkAFsfX22rSUkclEDeL9PuYnZCZimL7WOygAtHM8Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749650394; c=relaxed/simple;
	bh=2oRdqZ6SPujRaJ8F2bJDo/LdYAEhNpZYEDm0J4rtIe0=;
	h=To:Subject:From:Message-Id:Date; b=i7szwMSjsDFa34Nmz0BG9xCnMDt6nU4RakBjL1JvYCOQHgOXw25hwMKGME4BxLPA3YHUpGdDVIf5zR+udDMmM+2r0fA8WjSQJtKbjDT08VbJ/XhmnPbVcf5XaAVL+s0Pf018cKnBDIIYvb6ijtzuywu4ho2boe8J9qw4DpNkvQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVKENnpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVKENnpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2880C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749650393;
	bh=2oRdqZ6SPujRaJ8F2bJDo/LdYAEhNpZYEDm0J4rtIe0=;
	h=To:Subject:From:Date:From;
	b=EVKENnpevkw01bkUJI6TnYG/KfLyId5gLf9o3NRvsAMMHQzpB0HFwHMpVk0b9kDrh
	 GfTb4xRLF4/sz2bfskSVzr632ZX9ZUaesizKhSQkPam+/86WfMqBODqiey5W//Ksea
	 oA8v3zZ4cY0wFNJ3/JzYbmR7LnrOWF+IfKnfg+92upLg4aOPHzTPpQkHcW9Hj2aYS/
	 TRBWjr8+aDvg6AsduM2kFnwJ5LxVl5M7vFaTUam8mLXWgCU4ylcsaK2/TeR6OV5jIr
	 9Mpi9km67mDCp/TW0eSKVOYaQ83q13mwQoW84g9w1DTOF+B0nNvVg2awL4oE1d1Rnr
	 Ea9NEf1NWq38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BBC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965039358.1127.7919546900652488898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff92ac8c5f733841b7fb8914fb606a58cb6499019ac042386b7309cce34b9ce0
Date: Wed, 11 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749650393
