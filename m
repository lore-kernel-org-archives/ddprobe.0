Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C4625D535
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747726794; cv=none; b=dSYuFbpyl1L+K6l6ZaoLbcU0Gx3gMo/RfePuTozZvRBbHX4hapeHhI+hS8uu9BBN2xEAwUaRa2mtTw5Uz76OgTBZGldmBKCqMqMVz9cLRmdBFVZmx6YKxiDi/guOfJbCXhAlEB1yGRylGEa70Y+JcTsF3502Ha5njCU1sNgNyt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747726794; c=relaxed/simple;
	bh=nozB+X+8wI0AzsOdE/3UeZw8Si3oAWkjCrJVNdL16wE=;
	h=To:Subject:From:Message-Id:Date; b=FFktGBfMCcRfc3X9ZOm0j2x3qVh5K/7rg7UUu3npzKc2C/SsSExC/e7rf2l56JIkNvlZfjjSfJdlVy7c2ERBSQt6yszqdi6CJv0me5Djkjta3RepQyPUCKTq/kv4bPza3UHHnKfeztGEftdJRdKctCZTw52pcn4+vps8JBvbAoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0eJbzK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0eJbzK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F60C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747726793;
	bh=nozB+X+8wI0AzsOdE/3UeZw8Si3oAWkjCrJVNdL16wE=;
	h=To:Subject:From:Date:From;
	b=A0eJbzK4qEKprdn9XssgiVbsDp5CMfgOr+cfMBf5c/jaeKkyA6EfVSox7WSL4wmkz
	 chYHXaE058qOaSCjbe3Krh58J3ZaMqxv43Mjg/0iuVg19JHVnWyKUzqSY6XtD3SsYb
	 LIH47anMhNqHIopHW2+F2PQ0LxgPdvVFgTdw7I4vSi3QghGT2Rx9+39FihMFMy0zk+
	 4aRJt6RrcDHqDNCMkwluxZo68kWOWIOHx+8C6L5dulpMiL1upYkcW71q8RWbBqao/L
	 AsXs+M0Vby83GzhXbLSTfzgFEmSIf4Wxr/Gk5dE5hw8/kHjwyT4Cs0oS9kWRXiFAzy
	 r6lfFxu8Q5qsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A0C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772679358.10939.6332332997288526766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220b81e06fe093afe2e237b9c8aa4fee13e10409d6d94405104a89ca1dd5da0e
Date: Tue, 20 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747726793
