Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143CB13C83C
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711468697; cv=none; b=Ryk8f7e/QMHdCSZ0zi9gj8zvJUkG/RRmxdnOy8L1gVyatY5VLlTPqMw+5H0RuXy0r/wlDqxdBZtZLVdGxwpRXv8Axw/nViPFRzSLqNDqgt8ZVp6pi2ljr/tAIcabHsX9ycpN+Qrib9PhVp/RJfhe3/KHboJZUhN5zw9JgUPreOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711468697; c=relaxed/simple;
	bh=xemU+x2eOkIwWeIZPuaGxUYNsdBIBrW2VEAPg4vebjc=;
	h=To:Subject:From:Message-Id:Date; b=N/UsWGlyk0sp7xKkopu2Cbj1lNHw5fXjKKZ8mc4J6Evjs3/KT0uX96Z1PORI/Mw3NkopdgY088+BwU3r81MkCtNRapC/Vp0kwYBwEUcJqQZwGpTVPZ9Zype0XuprxRwUGPfKqB7UbU+S45mc7K1SZyIk9NoZIM6J/Pqu6mBwL98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxjD16sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxjD16sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C01C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711468696;
	bh=xemU+x2eOkIwWeIZPuaGxUYNsdBIBrW2VEAPg4vebjc=;
	h=To:Subject:From:Date:From;
	b=jxjD16sdJL1iRVJ2TwhVfLLe18d0Saa+MUZYn4Bb4Us3qVOZ21rFrf81ecCfbQyAH
	 OXCGtYRKK/fXMq+8XXswr8hc3Sco5dJdofFjqI7dMLwDQZ5vGoDEVdDzCYprVjjt+m
	 +unVb+9RwirGTKXBspoMlz7OF2Cpf/HUHoBmENkDqoYJA907HrIaE1cRUmSCS1xIL6
	 oGYGn6HIavHPtsoAGE8M4R0FzC1T6BYBJKyBA5RijnLUIEoF3ZKkoSCUQTeC8swMNa
	 HyaAEhE1KJ7V93uWC1KWH4366EZymyN+UGWLuTzy4vhb4FqWVZBjI4HzU99yVc1s2Z
	 qt9bOwBtB/riQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B226C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171146869643.15880.13084994240165540714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f2adeb567c670f8e14eb7ed128f577fa427844d935a8b3202ed23baec69db4
Date: Tue, 26 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711468696
