Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695911DFDE
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906863; cv=none; b=p7pd9jr4BZgNYKyYcb7Y6dPUWe5RYqLuc5KdZNC2fH+sQvVkJuxyytawAASnwndedJXWxQkmBUZmJH2bF/FcAWsn/QEQYuA8DmUDjslRHSdGjFrLQPBs3UsUYsVN16prEkMSAR6yf6uO/WrA+BqXdWgq9NRtYtT3ns2BGF77c9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906863; c=relaxed/simple;
	bh=EAJ9ZAsw63gPaV8XL4xi8Cnuo+/zoOo+mTHZkECTtto=;
	h=To:Subject:From:Message-Id:Date; b=nE0HhBX6jZaZm09Lq4eCmZBXHMunO30KyPaD6ViTxlJVWCDJ7MSYxoF6RR4ehcxJ33RyjAfIEghqZhuO9OuSViWGrg32tbiB9AyVo2DkQLRuOHmX98cV4LEFqrbfGjOQPYU9aDbIHgtEf/yMlVMJrrkETdNsvs4ZjzmgGYLP0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReVvYfEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReVvYfEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC71C32789
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716906862;
	bh=EAJ9ZAsw63gPaV8XL4xi8Cnuo+/zoOo+mTHZkECTtto=;
	h=To:Subject:From:Date:From;
	b=ReVvYfEe98JiKbQIbpEtX9OnyBd0GwXgmwZBW9FhqvJlBBPRx6BjUQR5t2ePJHG/T
	 j0p5Ir0TYKyIcfeDXi27oZp4EJ8slL2AlCNi0jBDMte3Vn6H2RwUW9tJkjQT2f925N
	 KSZ5KVUv1moALkagDqYi/UHreqZ2ZJSHO16bAAIPDpErAJMvIIEJ7xCnM1mcaDUysp
	 ouHlzC98msL9AXP9en209Y7TobzJ2aCpYKl2m0YxAz2Im2o7rYHmp/9agOJFHQL98J
	 XVn585bPF8mzauVixD19dyyZ54T5FK8JGPZ4LTqmKaAl0s5sRxfNAhLOzVtJSKtxGu
	 wOgVSMJfBtOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48E9C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690686279.395.5984724099982501454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608efa86431246a6980f341b8da574a72a6df030b18c5632cbce197134c13438
Date: Tue, 28 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716906862
