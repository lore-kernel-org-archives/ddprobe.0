Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5702D23A6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783117714; cv=none; b=V4YGtXTLX2IF3O4cp/UZzOFDWJiBvYK+BiPYE79XdrBHw1PZdbolgO/HmsVRuhV7uGSr0AkmEIigCrbR3BtoT3ADDKivvigMmWpTXQsoRZL3UgTLygtCI5OXs+mIfriJjmRpI33kFb2OhSUJNrWOf1v+pEm+UGHpJAamGM8Fhlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783117714; c=relaxed/simple;
	bh=/ArHyJYw/3TZ+UlH5eIhbfmEF+SAy/TfmuM+VQOI1Js=;
	h=To:Subject:From:Message-Id:Date; b=o8NyIIfF/z67Up3rO4DfWGQlXS148J/DKu1qyrpT59cmHPCRYV6dNgbujBGSg+y1D5lyndcZu+u5g0TXvIizSKOjLCASYwVjNzpEAkXHLuU+Aa641lmRvgjPd+2RMP7mf4WZ9s4Z96CpPRIeTp6qzHRobY+ZqVhwUoH+0hxBwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNiy3jtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNiy3jtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF389C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783117713;
	bh=/ArHyJYw/3TZ+UlH5eIhbfmEF+SAy/TfmuM+VQOI1Js=;
	h=To:Subject:From:Date:From;
	b=tNiy3jtz2O8s/h7kZ2n17ioY98DzvXpbfKnvx8MQ9crblmnT+0nm88ubPb9v2hsKT
	 1ciIX+L1d3Ij/pSHtCyBR4Xo3vYnL1asrCZx/YhznwbVrB5Vw870+OF8JeHbTuVDZ4
	 Lr3VJ2feiHBgp9oi+tZA4ttFAqDn1g5ayFcRsxqFetW+nzz8knP9N4EnrmRzS5IXDN
	 6aabGm2pU/adRVabxRHTyaoEqN3FUGaOuXn3Tamz6gB4iFr8U3bDQZyCL4hudNbx3V
	 Tk8aRMRrDAdI48n9UihoyTOKDlA6b2OT3Maf/4XP/Hnv1KA9KzsIbCIrwnjjFLBOMq
	 26wE6NUaJYKkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8647C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311771368.17203.10933536648257873279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24fa37c0f78f35671baa33cff023d432b188830dad7b5a5c532e2531481e5df
Date: Fri, 03 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783117713
