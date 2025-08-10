Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5EF1F1301
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754812195; cv=none; b=R+K5komh8aImdJtR5BWTqH+ycud7XKf986T8vR1cW/du5qqIFGlBFFEqmw6YrhDuRel95ejzfnd3pEMCb+rn1e4ScgRxY4GQIXbkQVZxBHvhUWSzhVpbRA0sx2hw+JYN3LDv/VB6oqX/q0o/J8xM2d44Ccp3mQCrm9iRxiTe3t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754812195; c=relaxed/simple;
	bh=XeCAhncOgr0ybGex53ZN4emONpFP9UjndyvUpqCwEPw=;
	h=To:Subject:From:Message-Id:Date; b=jnMIKHhM6thxTHL8BI70FGM4k7b8me+CEqPLnNgtB3WRg5T+yizl4XnIGD/31hIVvB/G+mIZFRK4hVU5EcFIKNCEAn9BxXNYjb+6/ENd6i1DH7hKnrUUo4D8KG5IpjYMrM0QlgcCqfJ5ZIzba+tIF3bL5vNkAT6Ic0ehnToL5UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDTB8K/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDTB8K/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D03C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754812193;
	bh=XeCAhncOgr0ybGex53ZN4emONpFP9UjndyvUpqCwEPw=;
	h=To:Subject:From:Date:From;
	b=lDTB8K/3T6QxegCHJRGockisMMp192uBkQQV11h7Ep3cxFt+SLASyKi1gwwLjfWsi
	 iYfRanIsFo33hf7eg/aQj8nCwc853+FkrQcJ3RYZLezI69w7nhDsTCTW4ylU44wVqx
	 5X/Ffloqnjwof3e//MMz8diE+yyfL8tecJDYOhti0dHOyGM0yCGbMou1SRMfIqQDXm
	 Z67ELC4Cwd4S6Xux8YefFfg9/C17HAqvLAAaHNO9vkFneoO1y0oHyA42YW0i3MXyq1
	 rF1XSU/4kjEsIjCB1ssmjvh4bVfqfEoYnwoA6kA+zyylQZUCfiGwddWc2aAcf1IZPx
	 p+Soqk9v7Cj+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165AC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481219357.24846.9785038991809846578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab461d2e40b8729e871e31e9222f3509132751d58dd66db277c780f26e65aa28
Date: Sun, 10 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754812193
