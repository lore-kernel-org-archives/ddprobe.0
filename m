Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBD29ACF3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752754794; cv=none; b=cImMdch2ZQkTfnZNTckjilVySYuj87J47LLsYBbmKFixACzJ0n1F1HJHQyveFCw8QMa/TAZmhC7vTMjN/0hTM2+wqUjfSI/miW87rkDYN94OrxhQvjozsZAogpdkUloPXb/D3vrYcnmEZR6DNTfAjx0J75ggJWsskc0ufVHiMIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752754794; c=relaxed/simple;
	bh=VtCR0eGQ/p5a0yP9GUibCWO4MhW+hbBtSMcXs9NhA7k=;
	h=To:Subject:From:Message-Id:Date; b=ICPILWQsQiAd+o5M5L++3KgBM9BOlCtwdH/aVfAejHNvGyVRbzM1iT1nbA23sgYShQGMXIAZwQi1+42h/NSOO48MNHZ6NBi3tfNeWtotuXobWD8v9WnjMvQi1nZk5r3h1EZL2a1huGavb9ZELZ5mwDLyUTGziCriyBR0i+Gfdd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3F+U5vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3F+U5vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752754793;
	bh=VtCR0eGQ/p5a0yP9GUibCWO4MhW+hbBtSMcXs9NhA7k=;
	h=To:Subject:From:Date:From;
	b=M3F+U5vMnvY6BvxW0GR6BPeUjtv7FdgN8IXG64dDGPrMco7XK6YqZIxGpCKuqo+/x
	 Cn5vk4WFb/jtshXUqhuRYK4c5VmJ/n4vMN8woS0RvvP6Fiz6U3P059h9uVfcpcIIaP
	 eAHT/9RXz+Z5MoZ8cCaQd7B2h5VkJPydO5uscO66cfOydruBqQ9024dbz9g+uYHi1B
	 ZK7DT9RvxnBSVDcKTb2A1K7d8iSGRWNsqFPBt4RxHpHXdu6g9YZcr2irT894RYfPnq
	 CDYYNOOTFnbiWh+PKDhs8ONBXMEmSvXxD19DLQCN+a81JcUYWRAsseKOoNe6COwaTo
	 90G9BvxRbCjVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94820C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275479357.14830.12190509439122474164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4333f1d919bdf76c95a7d649c431bd4393f0de116dc0ea0d5084642169831e75
Date: Thu, 17 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752754793
