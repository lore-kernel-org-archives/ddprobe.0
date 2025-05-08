Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD717A2F0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746687594; cv=none; b=O+hpTxlB2mAL8/qwuRKAOeXHmFnw1QnWG06KwyXOJfeSThViffF5eoCAhgLcMqLBtVjUfLwYcJBengZhzXH/2Suz+NFuSovb8+RSi4/bpEhcb5+TnsgAoprZ8ufPbLIuLx1OSktsL5w+DpuLJzEP9iQSlBYT3q7yf/uxuKepfO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746687594; c=relaxed/simple;
	bh=bAwJPhB5xORtIe0YYMXRLbG2gemGMVsJHT9C1p2/uyY=;
	h=To:Subject:From:Message-Id:Date; b=Gs5uOspsmQNj6iCqUiPULXP9eMq1cWVGrBYVHzMayN1TgRG9mbb/w8SYDkVmIptPWW6K1R1eSvVCDifqqE8YRbv1FAzYeWpgOsJ/EgUZ9d2DrLHcVMQANR19s4NxS/Q8lxqlBZ6oSzpT38+VsbYWz6RG7RWgVmt6BSCLeemPrrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2UOVFLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2UOVFLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D583C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746687593;
	bh=bAwJPhB5xORtIe0YYMXRLbG2gemGMVsJHT9C1p2/uyY=;
	h=To:Subject:From:Date:From;
	b=i2UOVFLxdk4GoKHbJLKcKRoQ0d63cSe9ikyhLfkzypAJC6JolKSy0YkX3DL1ZcdGX
	 q0RnedlAEbj3zOzezw1JiB1VMdlfcJ6SjYyicdCAhQkvk/J0oEBObWLRzLRpSyfuXb
	 a1vfPwnPH7EfZitzWG6uCxUyWk4QyNecaVB/T6PJZ6SatokxF64/WMU/eQorsQqHuu
	 IMKR7hQDyanQWCx30lmFj5oT2V1DzsifC05j62dbTIt2chJuMqK5g+OgHGFKeSnUvZ
	 oZdGDMdrbRyzMWlXk7iguh2/xVxRq2zj2wM3cckd6GO+uaAARvjorB0uj6xpHQ0wp7
	 f+NF/a3JWpucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E964C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668759357.31664.912908319813568570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfde27fac7094bb9b94b8051eb2f0f43745773eecdf4d9779c201443a5ac5e1
Date: Thu, 08 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746687593
