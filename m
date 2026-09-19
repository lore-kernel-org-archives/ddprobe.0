Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A84A2E0B5C
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789792834; cv=none; b=unKYv/GSz0q+thlLE9qRKDOObHTCqj9OvO6zRbspQMoNafc47Tn8MEx4D43S5aLhe0FW1wc6yVVEsf/yfJDp647unAiuDNUumMAnXzf7guCitrSNq3K9R0QT0maby7Bza3DCjfLQHzZytIqe/lgZFiRccRMqLt3Jisp7nJfRSlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789792834; c=relaxed/simple;
	bh=D7kuKAdzsdkaMhDZceklLDmU0mrYnce+aHhh0sOCP3Y=;
	h=To:Subject:From:Message-Id:Date; b=LRWCGrLbkC+fn8aLxT7CFMmngRwCN7NCwso+xghnfdgLPTypwQHBhjo3WOTHVMn4+FTc832L0O4SOp++Nzj84nLUNKlN77k3FwRPX2gwNJBJHCZKqW9sy0p+7E6jYgdTMak8jYtR1nSJQ9KOGNSOEMPttjxJ2zLOaexscrzWVZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h59RBuI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h59RBuI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F68C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789792833;
	bh=D7kuKAdzsdkaMhDZceklLDmU0mrYnce+aHhh0sOCP3Y=;
	h=To:Subject:From:Date:From;
	b=h59RBuI1fKhSe0fx7Fm2sixOXb+tuTYW7qs9ndBTXjeUM9JlNc/ITYYSur0CmXi0F
	 6V1fhPVICvwKFYYz/WQHxWvkFIU1Xg+m9UtnpRmuiu6Q8XLWzgYSDi6ej2BKPfpKZc
	 KVPykFo38bdJeA+V9I9iFp16sClzaX9NjzLVPWackAFM7lGchecoE2HoFNtTTSEwM/
	 Tn9sNyKkxUlgV+PkLVRO881WTP7QLQ6WANhTVVUGoVW4FbWY9wSkskPnXLgEQ41Rqp
	 YtaYXVHYDvWjaLKvH7AvZMzTe/zLeafvvlqRiUL3BQLMspb5HQkGYl2e1SCDW0Eb8r
	 jI+kQqMNpucPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A7C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979283369.10795.1368391325988583508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ff7e698cd8f5e1c195c19aab82c3c3bd79bfa5b597bab564ffcce21e795f86
Date: Sat, 19 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789792833
