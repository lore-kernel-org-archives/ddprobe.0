Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216CE2222A1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769292834; cv=none; b=CAUCmjlYxOgLYnVUdASE+t70oItbcaZLU2bYpqEBt4vQlMiGeYaftPVDI+doifXbuCBTEs8GZqqor5oGvO+H04eWCtyE7HDkHFmLsMEtZafPqQLcLpBRwaTQblg2aGP49O+uzb43o66QY5NjGq/vGDPFx3FftQMmQNkOAJ/PurQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769292834; c=relaxed/simple;
	bh=FoJKxjjm3LPwvIVPChLq5xmqgIhKRuVz+evUPvuTjB8=;
	h=To:Subject:From:Message-Id:Date; b=W9QnBmXz/KWY92dtDPBKmPed1FEb9ZSpej+jwuByXAXcS/6iEDz9gW/YL0xXg1H607oemJPJRuw0k+Iz2y296xK/she8HoFwBRnhhOyn9gMEBGy+vJkkOplHMLAqjEn7jxblq6M2pPfNpP0sNDusQ3ji88pagcnWK9wVZQt5gJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhBIJoMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhBIJoMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA862C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769292833;
	bh=FoJKxjjm3LPwvIVPChLq5xmqgIhKRuVz+evUPvuTjB8=;
	h=To:Subject:From:Date:From;
	b=UhBIJoMfpQPRRICFscp2u+1QVcPOO18LCenhJEEpqKtKkhSLpZMRnL+bJZciWrSMA
	 yGM4aJyWR4cjMUBT3JDZi/SS74TtwISTVXaoiIDMeSg/kW3T1ZSxxWQ6bmqgPDB2eb
	 htJR31wXVDxOQaIhRrB35GzBbx/DEL75yGMr6an/GMHoKy94fBE9xT9kenSxCG9yFM
	 2QtLkegujpcOnnGjS5iQE4HXtKxea7uiwnu21gMKtOi/zTwUohoPo9W3SrYUIlHDgO
	 s0MIGeFEGoqQCkqe/6AkKfX/xw9n2f2JJZINxdwsSZ1pPkcPeEYDvIo7LgbU8zJau8
	 Te1wFBLk5d/jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98965D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929283358.7482.14105814783239249541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ddf75aae104e8e9b2bb8379abe748a6c13a07676f77a8d4650396efbf91bd8
Date: Sat, 24 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769292833
