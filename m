Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9635343D76
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768535633; cv=none; b=iwDAzxnBBgmO/oyQcAO+fguH6cG1dFUSuirtvSTc2aY5kqGEEVd2Q0uJAuMZyXnBn6sSbxZqTUSvkZ51Q5N+GL1IwH6eeYUsegZZpkXMvY8fDAlh5xvZMCSNQNxOLMu4+hUChJHIy0MSrUB61IztUXzBM3BO7WsS4T3S0lyAkZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768535633; c=relaxed/simple;
	bh=U/iAxnBOCsg9SK0VpCe+KMVfq19qalD+ARazThmfyLY=;
	h=To:Subject:From:Message-Id:Date; b=E5PznL30aB06YrpDms0zkpGneLRn55gIM+OcKTRiWB2p4g8/ix+2WZCO+zvaThD5tuYbCCLmXjJI7W9ISydkXXCx1xd/PF+q8q4S/Xr2JI068wpQpP9E00fk0jDBpEyacgRxHDCBBVP06ucImUiHCpEaj2UznOD6towNugTy5Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FozQ34yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FozQ34yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E683C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768535633;
	bh=U/iAxnBOCsg9SK0VpCe+KMVfq19qalD+ARazThmfyLY=;
	h=To:Subject:From:Date:From;
	b=FozQ34yJH99sCmMWurboK7/zCUL0dUndFNgp08Myk0d8uIIkxvdNDXDkmP9pePD5U
	 F67aRVCMIYYAZPRh9nwIcMUpgmqmK/Jm5NHHaJGyHZAMhdJFLwAFVp+yEwiCP9C5Ug
	 vOsoZ44y27OtFyBrW406DzQBIN+k58a7xdZUVrNZoNsQOCeygXHXTVmkcZ48BQaBmR
	 DMfgb/RPuLvLbhecx6qJ+y8uQg+ZzM+lNxpP7S0nYG0c1Lm064Ii4YivxuopT+MqVZ
	 uqGPs4nQOsFKxDMY+pEHiA24HBWozCFk/SCJsb0TuQaWdA81Fhbka/BsSEKQ5tmv1S
	 fSq2C9hAj9GbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B7D4A5F6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853563358.26499.13579358064048371700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a01b5a73322ede4b1a6853c2692bc194453e347e2813768183556c931b6a34
Date: Fri, 16 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768535633
