Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485DF2E3367
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742744995; cv=none; b=DQyTQivLFu7Yuc+SZ4Y8xb/0a6fD24esXSYrqIcML49wjJfD+hmD93OHwdT8QxjQudKLn8F/eLZQ01Z8OQ7wkaeJVA9fIyJOHDQywJmU6EQguKOJjN4CdizNLooYuDVyBW9B/MX2qLjp89lRuufJWBRnJXeCyeinZSAKKkgPzjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742744995; c=relaxed/simple;
	bh=IOXgn2g6Af39Dvj0TmoSUx6Ub2VQ45Yn7QsqagoXdpo=;
	h=To:Subject:From:Message-Id:Date; b=eS8jhRKWUe0vOQNQga1nTLkyEjPZDkujeSGu6lJiXwzhy7Om0nbCb975a4J+wBuKRpv4G5aEjezIF7/9GqBD+v4HzQAusSPv0i4aX3hVf+OhrMEitHh1NafhgdInk1Pd/TQ+r6z8nEXFKWeIRG8yj4pdF+l6Dt3cWktpYQkd7p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLJQ0xv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLJQ0xv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE121C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742744993;
	bh=IOXgn2g6Af39Dvj0TmoSUx6Ub2VQ45Yn7QsqagoXdpo=;
	h=To:Subject:From:Date:From;
	b=QLJQ0xv29zOaUNqlNVPGDBVvxVYHLLGxuZIZjYk7A8FxFCNKh4LYaVHTujkk9nb9/
	 c60DE+n48cTpBGWHJEcRDMPLgbz7/NV3mW0iobxKC1b1R4zC2+JhP7/uZvPnVQ6uhn
	 33pQ6oF/pMtCD1ZBQcnvgVXa2IUs7Uv/xiDtr7JOYgH9jkt1W1Kmu7hgrVtzNsWfVh
	 KWB8TGqmiDHg5GefzvAUxNAnSK0/WG4jhCU71Ni+aE/310YcQwGl8XH0REO2mqHiiK
	 OCJ9kjRx8xMXgniT4h0Bo5wpDyogrFUS1zR6uC8eqosiS8deZ4mYIzADjcTrye/hoY
	 Cg5r1qahH9qtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69BCC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274499365.29756.11505637774567963070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a84b67ffee96fdbbb66efb2c9aebca61d1a04b8f856b0077f08414cca8002b
Date: Sun, 23 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742744993
