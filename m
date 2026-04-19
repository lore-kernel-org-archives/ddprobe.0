Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F4C40DFC8
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776572254; cv=none; b=Sj5pXG/ENqY8ArqtgPoo54+Ln1YFvrXzz8NMI/wUstawFWP9HsunarAC3OZ0IO0wBYhm3w5iOfgLsOyGMWPMpsaZEQaLXwoFQIYl7mSLJ651eJgp7/1k8+WySk9dvuv5j7Otw6zXwLVukhAgPOqZ+bvtErAyc7xjEwGKMgcgyWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776572254; c=relaxed/simple;
	bh=hr+6MLve+VRQJrttTvjdjzLFSa7D2Qj/e6I9Qo0YBZ8=;
	h=To:Subject:From:Message-Id:Date; b=FcO2wc5pPuxfPQuGxlQh6+c0n8hc03RS1zK01qe6U9akGHTEG29VjPeB8e0baZz1r0HgDgqXjZZUvhynf8rY4TXj7oW1H1ytwgV/Xw0P0gNkHEtM8JBp3loDk7EzxJptAfYRpavfNcaA62kKyUDGY33VOAlvrB/eGSY6jpcUwk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8RZnLIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8RZnLIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC0DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776572253;
	bh=hr+6MLve+VRQJrttTvjdjzLFSa7D2Qj/e6I9Qo0YBZ8=;
	h=To:Subject:From:Date:From;
	b=M8RZnLIuv5bZJnGHJbCYJV+QhFqcDE4sdE42gQHN0K0T18rTRRMMHAcSfqs2b7Xi8
	 ewqFWcTyFD8JcfNrjCoKfiujZIRvRwI7iTBMPxaVvuemy0Vg3O+wfgVGbq69K1ZrG/
	 Xt3iIFHW+lvriVB1CUWLJoUihgqdqyUcuo1FI+PXESqEhkakkscyK0TCgPgOu/dUQU
	 4jOtkp+KXtrvVsocMxKykVU0QtEDy3W/Q+FC6sQgt+mDJne+/AXr6OdHrRD1RYNMuk
	 4hnwD/aB32nyMaqQrxFhgVM/94G4v1P/BLnEsb2R/alxB3qIzvcCKHe97Kes+nZIbh
	 nlMp3aS7fZDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA83BEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657225368.25939.15294884199725895326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb91b89ed976498076a024d9c82e533cdc7fd865f9db83dff2001fc39a8e613
Date: Sun, 19 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776572253
