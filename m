Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C7D377AB6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787590234; cv=none; b=qcU8Pza0O+EzhLdRERVlfOtV1QOuiqf/gUDaB8ClhzPgFOM8B9+tOSVqoaUQ5U2YZbHdTdoXKMMlQ0PBqAkVTub9+EUVVfhbjsMRRKsX3rcj8EQCvsNwVOSD4xG1uU1h7Du67AvpLBBWK1Jwgbso33dGf1KOdvioFPw/Ly5Y6YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787590234; c=relaxed/simple;
	bh=6O+MHsppLxBB4ID0pAeCJ/th0ZOH7/Cw5idvQDDFgcE=;
	h=To:Subject:From:Message-Id:Date; b=BedkPgKLGxIe+flP5bUIVQX0N7MZv+Z7ofJ3clk+MMrbguBisHiEdV7yl+rHHLgtcgqNkhgY774k1QfL+jLjTCu9e7mszKhdLxivUo8vIA6JGk/QB7lyR5XW+lp4mfB9Auk/TxVSZC0hyYnkJZKaHu0MtK/PzEDblwNM4d4dlhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBhfSor1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBhfSor1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5EEC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787590233;
	bh=6O+MHsppLxBB4ID0pAeCJ/th0ZOH7/Cw5idvQDDFgcE=;
	h=To:Subject:From:Date:From;
	b=pBhfSor1RRYqlm8GqNObnDi0riFz2JxtbIhBFO4Eu2XdpI5ElkDQgQNdP4zgobXfn
	 RgMKtu7Qyk+qMQ/O76rwb/8Z9OrOPWWqxD4S08dY4k9moViCk1FjGjIGnNxxrAJYgP
	 e4FFAncBbJPSC41Gqpysz6Ve9i1AGVGZtQVMNeoYehEbmjThwPPfys27iDy9Ut1kNV
	 6++KQLd7J7xC1yqYTEBH7w9E9+I1eaFDql8FOd6AIF5AVyBFTrFSyQmaEgA6wClwQi
	 f+psslqHcCdi39ojMy1ntTYNiFN6nvaNP5i+s/pLFH0Zqo2aqg7kltW6EcHi7vkW0a
	 LcnSRmuuvG6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC382C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759023369.31712.6092826765855520669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd7f37a73943ddcfaa540008284e6e2ea09cc5916b280d05a465dbf4c004240
Date: Mon, 24 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787590233
