Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEFD231CAE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728810954; cv=none; b=gBha3FzhB0EkC2fQqtEHbhY3nLYAP2JieQ6cFYiokp3BpasoAgXHBcZs6ph7VYLDKVsVUtchHJw+i6KLaUd/1HF+BMHhosvM/jHATWEi8AJ2foAtPuydhPeMJELpgZcCMbbE/atdpAHjAXWXBUApuTISfOFsIGzAdfXdcZj/Cuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728810954; c=relaxed/simple;
	bh=7gysZC1SfJiRveMcwO4Afh8DMDt4rzO5eS62ucK9Rj8=;
	h=To:Subject:From:Message-Id:Date; b=bntuSZGSbUFF4R4c23dxdxBGan6t4eaeqH0XV+YRMy2QK2yqMEcB+3rGhsVMIgB/MWjWlHkBVL02yW+EbrsT3cBlpO0t9j9Dmlejd32C5UsQUGLzmALbvhwO1qnVLWtxrT25GRJdiOxjZYC3/hr5KhbFWsgrM8fKxXGzefDckmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCvsc9Z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCvsc9Z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85ADC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728810953;
	bh=7gysZC1SfJiRveMcwO4Afh8DMDt4rzO5eS62ucK9Rj8=;
	h=To:Subject:From:Date:From;
	b=oCvsc9Z5I8U23jWGXbYTRcnTv+gcuOtx7euWDHy+8lniifnJNOFkgqdse+Movk2iP
	 LFMqTbjPXKaUxooSZz340A4FksOzUHVUf6fAYLsv0xemvMriQzQTLBx+37HStPNrIE
	 Vdj0czj/piEX3RZppscM51JUAhRJTWuOMaG3DI+41IPDpVbreIlMMEo1gMCuiSJLdB
	 r8tZ5x9mVyGTBjk3XuD4mSJpnsV2EO0ZN4Nz2C0vdvNAWkrqnJvjHQlCqjFY8sr+1B
	 9UGo+orGRJq9OiXxSNoP+CzK8RPsceOZNLJVOaTsXQTJRJozcfsLaYPtR8PjOKFGPU
	 V3tMT5MngKdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C1ECF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881095359.12433.9124470860320576116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e377e54a48296ae6dc1c19ca461927a982e97f13515fafeab9b0a5543bc7cd96
Date: Sun, 13 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728810953
