Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2234C8F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749187795; cv=none; b=HyxC5dqvrO+PFYOXYOGykcox15vpiJwdLrOwt6qYDEkW8L1oDRCjHrkLjn25zo0gkbJ5Ey4rwCajbPOyuO7mIUrh6Zf3L9Kn34XuATyo9bsL5nKbj9vNGz5Oyyr9kpuBp3Ymy0DMvK+PD/23oG4kApCf0t6MTYU7bw8EBkE3G0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749187795; c=relaxed/simple;
	bh=ObVEDojP2AyOLKjHg9+y5iCLj7s5YOd2jqK+ziVOO/k=;
	h=To:Subject:From:Message-Id:Date; b=W2aBm3QKzhRyXq4J353OAmbj06DrbP7C83A78KEGxCgdvIZ6+lcMYe9qGj33MuQZTGXNPtPQTEChdzCL0P0YZetJFg30bN4pnvw43TE8Q9V5gHG7FlZC9jBCr7qvgd6dG7wZyoM+1I9Jdd0DPwQAi4gwi/9RxNjuptbBEVyHxnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFcLYDdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFcLYDdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1482C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749187793;
	bh=ObVEDojP2AyOLKjHg9+y5iCLj7s5YOd2jqK+ziVOO/k=;
	h=To:Subject:From:Date:From;
	b=LFcLYDdm6X8+mTW5qPKZTRBqfJnY57tXgx+nUC8lh1Wo+/BBUef8VvLSYhU6UzcN9
	 kTMbdCvDJIgvwgG6hmTsXALgW4Gxaqq/2smXaGfkMtS4uwKmWIjQvGD9mSB7KCwDaG
	 DHzjJX4aZj38zcvs3XGcodOcbij/THj988wZLgIpBUd4JDdY0LRpz/677YozkfevoF
	 HIlXKcCDsIheFEvznz+IRodSUWxxuYRFhwDpFsx9VpCWXEz+fenALlbkPMhliR5oxl
	 8hSI6lBjhybSFork5x8R1EPMCEigJ8w1vDX1fnBP45gmeX3K544a2T9sQHdQbEBc6s
	 rcjipwEz5edZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F728C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918779357.3095.16969085271187821419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a873d7b60393dba73adc29621989fe3f6246ee22a08420fac9be61128de20435
Date: Fri, 06 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749187793
