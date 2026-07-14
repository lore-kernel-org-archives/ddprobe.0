Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F8C207DF7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783991914; cv=none; b=CIDX5SnBzjqiqj4FX0rAmz95dOjq9Q4qBo51u1FxBx2d8bEcS8rk0LdMWNGcHs5xBWcyXlyEPizUP4IvIOeuTgQdTuW27chC/gs24Mlr08GND3w2xxLsQlqihMr6dXynALr0i1N8Sgu/bUNlQ434jM2fveOk/4i1E0cmE8tW6dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783991914; c=relaxed/simple;
	bh=VFhFsL5dfa0fDxVsb/K2eKOTg/UdRp2t+BnUGQpb5UY=;
	h=To:Subject:From:Message-Id:Date; b=lp9WmOXAtxdScaJrgmM/n2bdLP1hiJ4kfp7MMMLk0xLEV+enZm7qpLI+pYGkzCqJboN4cKeorv7qV8fK72mXKH2p5A6ftuEGSa+9080Gdc10ten8R3BkJOV4mXxQmkzdRtp5fjEkaqRQQnM9c9X3VLtD9au62ikHw7VJXB1q7UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn7dT1Gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn7dT1Gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD4DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783991913;
	bh=VFhFsL5dfa0fDxVsb/K2eKOTg/UdRp2t+BnUGQpb5UY=;
	h=To:Subject:From:Date:From;
	b=Tn7dT1GkrAmjrfCVvWNsZ2W4Yrrw7NMrvM+mfitA9nLiD+AT5JAE4UQUWHyiHQ1VK
	 +xMEz8TF7vGZwjdwiVAX7QnZ9OODNIXzPS0jkozLKMwgq2hFt2D9ExCHwnpH368ZNT
	 ENUIVoUW2xeTNay3CNBXraj/jYOl4CxX3OMcW0KQx17ioFZRyR6vKi8Uwf9Abby/J7
	 cqhL2GE7cxuzC5SeL3H2TaUfXSgr49FWHoSvQWoJIep6fnnmxpfy0m7yIYk3bcGRbG
	 OzLF04l64ml9gmByO0XAIABBrRdUf+yRZVFzC8e8mS6Wca8faGmlY2Pe2H/qshGSsm
	 a55B7B1zucbsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9080C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399191368.8339.3924656000958736205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ad10a76ab0ce85346e379ea39db23b49741196893bf6a85cf369bbc402dca5
Date: Tue, 14 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783991913
