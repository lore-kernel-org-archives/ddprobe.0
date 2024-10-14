Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478651C729B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728930354; cv=none; b=fQZhy4mQv4K1XH0tNS81J6hXmxZgwUzphwrtFMcWzL/n2gAdP53wXvoejvCgGGWVaim9hAZy3ObuAONk2bl8HoY4FP5x/kkSPUKo6DZ+REXpwHm3c+abGXm20ZbyH0GImYkMlbpc5XJWV2MPox/uhuWfMBKV31cjZCg4egZGVtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728930354; c=relaxed/simple;
	bh=zZCBc44kpmITe5/J9rwS8x3tOyHHQzp6xmtCdgl2LDQ=;
	h=To:Subject:From:Message-Id:Date; b=HPPbQwGmy3Rnd02d44qPYxGnpbCQLbagLTbXHfk8Tss7FNcvNR457359GP3JJKDux4Sduk8sY0gDtvnzK6k26EUabyxJqkU+y2/X7ucZL8wTVpDAVGhk3dJEyxcn5Gq2GwE9WRfPRWIQYZyzIAHvP04ZauxtFqFIIRU+h1x7DxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCUuoNxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCUuoNxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F3C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728930353;
	bh=zZCBc44kpmITe5/J9rwS8x3tOyHHQzp6xmtCdgl2LDQ=;
	h=To:Subject:From:Date:From;
	b=kCUuoNxnbiaUpM+Jq2GEhg6DpwzS1bZlFplk8in/bOJTcc44mbKC7bPQAzYdV2Rj6
	 FPdi85yFAQ4xyTWdixTUKXrMDv7aPlw7X1bUAP2iyzsPJrFI33cjy/1IKysUhWaV5o
	 1sZZ33b/NWhy6z27EeBlRlK0lzJ4Ex854J1+BzXmXWIt4mopPMo8C2qBKWnWEXH3J6
	 Yc8+PMi2b5QU5o4MA0ENrGGEA4TWVmrk8VWi4wMvQKYzMsVRAMXAOFZ6cESHYythOq
	 uGlW2UP0hb87POSIYJbxOAEWYdAhEj6IlVHHITsbBX1vipz1DkBBV+iqdJxykkALBS
	 UFiAY6ctyvKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A318DD1813A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893035363.18629.9416977322911472490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a62ad30b7bdbee89588284fae861722346d4b4d789781b09a17fd294bd88724
Date: Mon, 14 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728930353
