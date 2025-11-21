Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90682749F1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763739713; cv=none; b=IaeWNBclh8CmAlcwIBH/2JoAsFmVIz818k9XPO+SGmiItj6KqybevKq/Z3HSuGYlmqBt263ZrtoGHHYUNTC9GH7yMuZDWA0gGtvdOlLnW1OhawL0HAz/PXbNBl1H/p8fANiVutEIlvhtdnFxnp9pffeQSR2Gi5HlnK2v7IEZ6QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763739713; c=relaxed/simple;
	bh=8YpVEs3NdBTj6jglla35YNqOWXaSTwWo7H7nkpruPfM=;
	h=To:Subject:From:Message-Id:Date; b=X9aJ9POIIE7a4Bv8UlD182PN/o23bDKKBsVY8/Xk2w61swiYHqzSDaBy65lxFU4SWxhh0CoSGvImRMa3583kIbaJPWo18fsiVxYQ+wZ/J+dInLdX+bSZLugpdVFdp7Ee9q9Xp1UZnvhXiegqc3tq8Jg4QG1yGg4sv4Amtg6jh30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH+IoFpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH+IoFpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763739713;
	bh=8YpVEs3NdBTj6jglla35YNqOWXaSTwWo7H7nkpruPfM=;
	h=To:Subject:From:Date:From;
	b=sH+IoFpT6tIxjfLMBJ8mZtF8dL7Rr5HpV7+CU4GOjaryb6PSwIMQ0wth1TA+EFInl
	 5+DlChIKdX9UK7nCAJm+nWsnOLnqWijgY36ZsYGPKPlgvq+Mtfcp8n3DCZvutJEhpM
	 IeZdRX0LRp0zEpHthQ+W0WCWOR30sDomkrAu3MHNUVPDP+48ncTSxprIZxO1qG+Cvx
	 +R6Q2q57IrDPl5AEGsJOsFKh8lABsscsS6z4c1Ybn9jIRHX2kF/PR7hJLcdgyd/NE+
	 QR33Dp1t9UZoaaDMxlh/wnPGVbT0xh87X8iCyXUqn/aGwito+tuANABmJdRbnRDfjh
	 m//ssvL9EXr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E87CFC28B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373971358.9512.849984060191376539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548f546a57851b4eafebb6d80b345bffe83560033299729a936c242f4a7757c7
Date: Fri, 21 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763739713
